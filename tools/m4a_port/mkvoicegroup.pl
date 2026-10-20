# Builds an Emerald voicegroup that copies a song's original instrument set byte for byte, for games whose
# samples are mostly identical to Emerald's (like Drill Dozer, also by Game Freak). Each instrument the song
# plays keeps its original settings. Samples identical to an Emerald sample point at it; others are extracted
# to <sampledir>/<prefix>_*.bin to be brought over (see README). Programmable waves must match Emerald's.
# Unused slots get Emerald's placeholder square.
#
# usage: perl tools/m4a_port/mkvoicegroup.pl lib.bin <table hex> <song> <voicegroup name> <sample prefix> <sampledir> > sound/voicegroups/<name>.inc
use strict; use Digest::MD5 qw(md5_hex);
my ($lib, $tbl, $song, $name, $prefix, $sampledir) = @ARGV; $tbl = hex $tbl;
my %em; for my $fn (glob "sound/direct_sound_samples/*.bin") { open my $f, '<:raw', $fn or die; local $/; my $d = <$f>;
    my ($fl, $fr, $lp, $sz) = unpack('V4', $d); (my $n = $fn) =~ s#.*/##; $n =~ s/\.bin$//; $em{md5_hex(substr($d, 16, $sz))} = $n }
my %wv; for my $fn (glob "sound/programmable_wave_samples/*.pcm") { open my $f, '<:raw', $fn or die; local $/; my $d = <$f>;
    (my $n = $fn) =~ s#.*/##; $n =~ s/\.pcm$//; $wv{unpack('H*', $d)} = "ProgrammableWaveData_" . ($n + 0) }
open my $g, '<:raw', $lib or die; local $/; my $r = <$g>;
sub u8 { ord substr($r, $_[0], 1) } sub u32 { unpack('V', substr($r, $_[0], 4)) }
my $filler = "\tvoice_square_1 60, 0, 0, 2, 0, 0, 15, 0\n";

# Which programs, drum keys and keysplit keys does the song play?
my $h = u32($tbl + 8*$song) - 0x08000000; my $tc = u8($h); my $vg = u32($h+4) - 0x08000000; my (%prog, %keys);
for my $t (0 .. $tc-1) { my $p = u32($h+8+4*$t) - 0x08000000; my ($rs, $voice, $key, $n, @stack) = (0, 0, 60, 0);
    while ($n++ < 200000) { my $c = u8($p); my $cmd = $c; if ($c < 0x80) { $cmd = $rs } else { $p++ }
        if ($cmd >= 0x80 && $cmd <= 0xb0) { } elsif ($cmd == 0xb1) { last }
        elsif ($cmd == 0xb2) { my $d = u32($p) - 0x08000000; last if $d < $p; $p = $d }
        elsif ($cmd == 0xb3) { push @stack, $p+4; $p = u32($p) - 0x08000000 } elsif ($cmd == 0xb4) { $p = pop @stack if @stack }
        elsif ($cmd == 0xb9) { $p += 3 } elsif ($cmd == 0xcd) { $p += 2 }
        elsif ($cmd >= 0xba && $cmd <= 0xc8) { my $v = u8($p++); $rs = $cmd if $cmd >= 0xbd; $voice = $v if $cmd == 0xbd }
        elsif ($cmd == 0xce) { $p++ if u8($p) < 0x80; $rs = $cmd }
        elsif ($cmd >= 0xcf) { $rs = $cmd; $key = u8($p++) if $c < 0x80 || u8($p) < 0x80; if (u8($p) < 0x80) { $p++; $p++ if $cmd != 0xcf && u8($p) < 0x80 }
            $prog{$voice} = 1; $keys{$voice}{$key} = 1 } } }

# Names of brought-over samples are kept in <sampledir>/names.txt, so a sample gets the same name in every song
my (%extract, %names, %taken);
if (open my $nf, '<', "$sampledir/names.txt") { my %pairs = split ' ', do { local $/; <$nf> }; for my $m (keys %pairs) { $names{$m} = $pairs{$m}; $taken{$pairs{$m}} = 1 } }
sub sample_label { my ($p, $what) = @_; my $o = $p - 0x08000000; my ($fl, $fr, $lp, $sz) = unpack('V4', substr($r, $o, 16));
    my $m = md5_hex(substr($r, $o+16, $sz)); return "DirectSoundWaveData_$em{$m}" if $em{$m};
    if (!$names{$m}) { my $n = "${prefix}_$what"; my $i = 2; $n = "${prefix}_${what}_" . $i++ while $taken{$n}; $names{$m} = $n; $taken{$n} = 1 }
    $extract{$m} //= { name => $names{$m}, data => substr($r, $o, 16+$sz+1) }; return "DirectSoundWaveData_$names{$m}" }
# One 12-byte entry, as raw bytes
sub entry { my ($o, $what) = @_; my @b = unpack('C4', substr($r, $o, 4)); my $p = u32($o+4); my @e = unpack('C4', substr($r, $o+8, 4));
    my $t = $b[0]; my $ptr;
    if (($t & 0x07) == 0) { $ptr = sample_label($p, $what) }
    elsif (($t & 0x07) == 3) { my $w = unpack('H*', substr($r, $p-0x08000000, 16)); $ptr = $wv{$w} or die "wave $w ($what) has no Emerald match" }
    else { $ptr = $p }
    return sprintf("\t.byte 0x%02x, %d, %d, %d\n\t.4byte %s\n\t.byte %d, %d, %d, %d\n", @b, $ptr, @e) }

my ($main, $subs) = ("", "");
for my $prog (0..127) {
    my $o = $vg + 12*$prog; my $t = u8($o);
    if (!$prog{$prog}) { $main .= $filler; next }
    if ($t == 0x80) {   # drum kit: only the keys the song plays
        my $sub = u32($o+4) - 0x08000000; my @k = sort { $a <=> $b } keys %{$keys{$prog}};
        $subs .= "\nvoice_group ${name}_drums_$prog, $k[0]\n"; my %used = map { $_ => 1 } @k;
        for my $k ($k[0] .. $k[-1]) { $subs .= $used{$k} ? entry($sub + 12*$k, "drum_$k") : $filler }
        $main .= "\tvoice_keysplit_all voicegroup_${name}_drums_$prog\n";
    } elsif ($t == 0x40) {   # key split: the original table for the keys played, and the sub-instruments they use
        my $sub = u32($o+4) - 0x08000000; my $kt = u32($o+8) - 0x08000000; my @k = sort { $a <=> $b } keys %{$keys{$prog}};
        my %idx = map { $_ => u8($kt + $_) } @k; my %usedidx = map { $_ => 1 } values %idx; my @i = sort { $a <=> $b } keys %usedidx;
        $subs .= "\nvoice_group ${name}_split_$prog\n";
        for my $i (0 .. $i[-1]) { $subs .= $usedidx{$i} ? entry($sub + 12*$i, "split_${prog}_$i") : $filler }
        $subs .= "\n\t.align 2\n${name}_split_${prog}_table:\n" . join("", map { sprintf("\t.byte %d\n", $idx{$_} // 0) } 0 .. 127);
        $main .= "\tvoice_keysplit voicegroup_${name}_split_$prog, ${name}_split_${prog}_table\n";
    } else { $main .= entry($o, "slot_$prog") }
}
print "\@ Instruments for mus_$name, copied byte for byte from the original game ($lib, song $song).\n";
print "\@ Samples point at the identical Emerald samples; ones Emerald doesn't have were brought over.\n";
print "voice_group $name\n$main$subs";
mkdir $sampledir; for my $m (keys %extract) { open my $o, '>:raw', "$sampledir/$extract{$m}{name}.bin" or die; print $o $extract{$m}{data}; print STDERR "needs sample $extract{$m}{name}\n" }
open my $nf, '>', "$sampledir/names.txt" or die; print $nf "$_ $names{$_}\n" for sort keys %names;
