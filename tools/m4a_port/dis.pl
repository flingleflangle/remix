# Disassembles one M4A (Sappy) song from a GBA ROM image into pokeemerald .s format.
# usage: perl dis.pl rom.bin songTableOffset songIndex name [summary]
use strict;
my ($romfile, $tbl, $songIdx, $name, $summary) = @ARGV;
$tbl = hex $tbl;
open my $f, '<:raw', $romfile or die; local $/; my $r = <$f>; close $f;
sub u8 { ord substr($r, $_[0], 1) }
sub u32 { unpack('V', substr($r, $_[0], 4)) }
my @len = (0..24, 28,30,32,36,40,42,44,48,52,54,56,60,64,66,68,72,76,78,80,84,88,90,92,96);
my @nn = qw(Cn Cs Dn Ds En Fn Fs Gn Gs An As Bn);
sub key { my $k = shift; my $o = int($k/12) - 2; return $nn[$k%12] . ($o < 0 ? "M".(-$o) : $o) }
my %one = (0xba=>'PRIO',0xbb=>'TEMPO',0xbc=>'KEYSH',0xbd=>'VOICE',0xbe=>'VOL',0xbf=>'PAN',0xc0=>'BEND',
           0xc1=>'BENDR',0xc2=>'LFOS',0xc3=>'LFODL',0xc4=>'MOD',0xc5=>'MODT',0xc8=>'TUNE');
sub fmtarg {
    my ($c, $v) = @_;
    return "${name}_key+".($v>=128?$v-256:$v) if $c == 0xbc;
    return ($v*2)."*${name}_tbs/2" if $c == 0xbb;
    return "$v*${name}_mvl/mxv" if $c == 0xbe;
    return sprintf("c_v%+d", $v-64) if $c == 0xbf || $c == 0xc0 || $c == 0xc8;
    return $v;
}
my $h = u32($tbl + 8*$songIdx) - 0x08000000;
my ($tc, $blk, $pri, $rev) = unpack('C4', substr($r, $h, 4));
my $vg = u32($h+4);
my @out; my %stats;
for my $t (0 .. $tc-1) {
    my $start = u32($h + 8 + 4*$t) - 0x08000000;
    # pass 1: find end (FINE) and jump targets
    my (%targets, @lines); my $p = $start; my $rs = 0; my $end;
    my $tn = $t + 1;
    my @ins; # [offset, text]
    my %st = (voices=>{}, notes=>0, lo=>127, hi=>0, vols=>{});
    while (1) {
        my $o = $p; my $c = u8($p);
        my $cmd = $c;
        if ($c < 0x80) { $cmd = $rs; die sprintf("running status without command at %x", $p) unless $rs; } else { $p++ }
        if ($cmd >= 0x80 && $cmd <= 0xb0) { push @ins, [$o, sprintf("W%02d", $len[$cmd-0x80])]; }
        elsif ($cmd == 0xb1) { push @ins, [$o, "FINE"]; $end = $p; last; }
        elsif ($cmd == 0xb2 || $cmd == 0xb3) {
            my $dst = u32($p) - 0x08000000; $p += 4; $targets{$dst} = 1;
            push @ins, [$o, ($cmd==0xb2?"GOTO":"PATT"), $dst];
            if ($cmd == 0xb2 && $dst < $o) { push @ins, [$p, "FINE"]; $end = $p; last; }
        }
        elsif ($cmd == 0xb4) { push @ins, [$o, "PEND"]; }
        elsif ($cmd == 0xb5) { my $n = u8($p++); my $dst = u32($p) - 0x08000000; $p += 4; $targets{$dst}=1; push @ins, [$o, "REPT", $dst, $n]; }
        elsif ($cmd == 0xb9) { my @a = map { u8($p++) } 1..3; push @ins, [$o, "MEMACC , ".join(" , ", @a)]; }
        elsif ($cmd == 0xcd) { my @a = map { u8($p++) } 1..2; push @ins, [$o, "XCMD  , ".join(" , ", @a)]; }
        elsif (exists $one{$cmd}) {
            my $v = u8($p++); $rs = $cmd if $cmd >= 0xbd;
            my $txt = ($c < 0x80 ? "        " : sprintf("%-6s, ", $one{$cmd})) . fmtarg($cmd, $v);
            push @ins, [$o, $txt];
            $st{voices}{$v}++ if $cmd == 0xbd;
            $st{vols}{$v}++ if $cmd == 0xbe;
        }
        elsif ($cmd == 0xce) { # EOT, optional key
            my @a; push @a, key(u8($p++)) if u8($p) < 0x80; $rs = $cmd;
            push @ins, [$o, ($c < 0x80 ? "        " : "EOT   ") . (@a ? ($c<0x80?"":", ").join(" , ", @a) : "")];
        }
        elsif ($cmd >= 0xcf) { # TIE or note: key, vel, gate (all optional)
            $rs = $cmd; my @a;
            if ($c < 0x80) { push @a, key(u8($p++)); } elsif (u8($p) < 0x80) { push @a, key(u8($p++)); }
            if (@a && u8($p) < 0x80) { push @a, sprintf("v%03d", u8($p++));
                if ($cmd != 0xcf && u8($p) < 0x80) { push @a, "gtp".u8($p++); } }
            my $nm = $cmd == 0xcf ? "TIE" : sprintf("N%02d", $len[$cmd-0xcf]);
            push @ins, [$o, ($c < 0x80 ? "        " : (@a ? sprintf("%-6s, ", $nm) : $nm)) . join(" , ", @a)];
            if (@a && $a[0] =~ /^[A-G]/) { $st{notes}++; my $k = u8($c<0x80?$o:$o+1); $st{lo}=$k if $k<$st{lo}; $st{hi}=$k if $k>$st{hi}; }
        }
        else { die sprintf("unknown command %02x at %x (track %d)", $cmd, $o, $tn) }
    }
    # label naming
    my %lab; my $li = 0;
    for my $d (sort { $a <=> $b } keys %targets) {
        die sprintf("jump target %x outside track %d", $d, $tn) if $d < $start || $d >= $end;
        $lab{$d} = sprintf("${name}_%d_%03d", $tn, $li++);
    }
    my %have = map { $_->[0] => 1 } @ins;
    for (keys %lab) { die sprintf("jump target %x mid-instruction in track %d", $_, $tn) unless $have{$_} }
    push @out, "\@**************** Track $tn ****************\@\n\n${name}_$tn:\n";
    for my $i (@ins) {
        my ($o, $txt, $dst, $n) = @$i;
        push @out, "$lab{$o}:\n" if $lab{$o};
        if ($txt eq 'GOTO' || $txt eq 'PATT') { push @out, "\t.byte\t$txt\n\t .word\t$lab{$dst}\n" }
        elsif ($txt eq 'REPT') { push @out, "\t.byte\tREPT  , $n\n\t .word\t$lab{$dst}\n" }
        elsif ($txt =~ /^ /) { $txt =~ s/^ +//; push @out, "\t.byte\t\t        $txt\n" }
        else { push @out, ($txt =~ /^W/ ? "\t.byte\t$txt\n" : "\t.byte\t\t$txt\n") }
    }
    push @out, "\n";
    $stats{$tn} = \%st;
    if ($summary) {
        printf "track %2d: %5d bytes, notes %4d, keys %s-%s, voices {%s}, vols {%s}\n", $tn, $end-$start, $st{notes},
            ($st{notes}? (key($st{lo}), key($st{hi})) : ('-','-')),
            join(",", map {"$_ x$st{voices}{$_}"} sort {$a<=>$b} keys %{$st{voices}}),
            join(",", sort {$a<=>$b} keys %{$st{vols}});
    }
}
if ($summary) { printf "tracks %d, priority %d, reverb 0x%02x, voicegroup 0x%08x\n", $tc, $pri, $rev, $vg; exit }
print "\t.include \"MPlayDef.s\"\n\n";
print "\t.equ\t${name}_grp, VOICEGROUP\n\t.equ\t${name}_pri, 0\n\t.equ\t${name}_rev, ".sprintf("0x%02x",$rev)."\n\t.equ\t${name}_mvl, 127\n\t.equ\t${name}_key, 0\n\t.equ\t${name}_tbs, 1\n\t.equ\t${name}_exg, 0\n\t.equ\t${name}_cmp, 1\n\n";
print "\t.section .rodata\n\t.global\t$name\n\t.align\t2\n\n";
print @out;
print "\@******************************************************\@\n\t.align\t2\n\n$name:\n\t.byte\t$tc\t\@ NumTrks\n\t.byte\t0\t\@ NumBlks\n\t.byte\t${name}_pri\t\@ Priority\n\t.byte\t${name}_rev\t\@ Reverb.\n\n\t.word\t${name}_grp\n\n";
print "\t.word\t${name}_$_\n" for 1..$tc;
print "\n\t.end\n";
