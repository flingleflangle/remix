# Simulates one loop of an M4A song and reports how many DirectSound (sampled) notes overlap.
use strict;
my ($romfile, $tbl, $songIdx, @skip) = @ARGV; $tbl = hex $tbl; my %skip = map { $_ => 1 } @skip;
open my $f, '<:raw', $romfile or die; local $/; my $r = <$f>; close $f;
sub u8 { ord substr($r, $_[0], 1) } sub u32 { unpack('V', substr($r, $_[0], 4)) }
my @len = (0..24, 28,30,32,36,40,42,44,48,52,54,56,60,64,66,68,72,76,78,80,84,88,90,92,96);
my $h = u32($tbl + 8*$songIdx) - 0x08000000; my $tc = u8($h); my $vg = u32($h+4) - 0x08000000;
sub is_ds { my $v = shift; my $t = u8($vg + 12*$v); return ($t & 7) == 0 && $t != 0x80 ? 1 : ($t == 0x40 || $t == 0x80) ? 1 : 0 }
my @events; my $maxtick = 0;
for my $t (0 .. $tc-1) {
    next if $skip{$t+1};
    my $p = u32($h + 8 + 4*$t) - 0x08000000; my ($rs, $tick, $voice, @stack, %ties, $loops) = (0, 0, 0);
    my $lastkey = 60; my $lastvel = 100; my $lastgtp = 0;
    while ($tick < 200000) {
        my $c = u8($p); my $cmd = $c; if ($c < 0x80) { $cmd = $rs } else { $p++ }
        if ($cmd >= 0x80 && $cmd <= 0xb0) { $tick += $len[$cmd-0x80] }
        elsif ($cmd == 0xb1) { last }
        elsif ($cmd == 0xb2) { my $d = u32($p) - 0x08000000; if ($d < $p) { last } $p = $d }
        elsif ($cmd == 0xb3) { my $d = u32($p) - 0x08000000; push @stack, $p+4; $p = $d }
        elsif ($cmd == 0xb4) { $p = pop @stack if @stack }
        elsif ($cmd == 0xb5) { die "REPT unsupported" }
        elsif ($cmd == 0xb9) { $p += 3 } elsif ($cmd == 0xcd) { $p += 2 }
        elsif ($cmd >= 0xba && $cmd <= 0xc8) { my $v = u8($p++); $rs = $cmd if $cmd >= 0xbd; $voice = $v if $cmd == 0xbd }
        elsif ($cmd == 0xce) { my $k = $lastkey; $k = u8($p++) if u8($p) < 0x80; $rs = $cmd;
            if (exists $ties{$k}) { push @events, [$ties{$k}, $tick, $t+1, $voice] if is_ds($voice); delete $ties{$k} } }
        elsif ($cmd >= 0xcf) { $rs = $cmd; my $k = $lastkey;
            if ($c < 0x80 || u8($p) < 0x80) { $k = u8($p++) }
            if (u8($p) < 0x80) { $p++; if ($cmd != 0xcf && u8($p) < 0x80) { $lastgtp = u8($p++) } else { $lastgtp = 0 } }
            $lastkey = $k;
            if ($cmd == 0xcf) { $ties{$k} = $tick } else { push @events, [$tick, $tick + $len[$cmd-0xcf] + $lastgtp, $t+1, $voice] if is_ds($voice) } }
    }
    $maxtick = $tick if $tick > $maxtick;
}
my %delta; for (@events) { $delta{$_->[0]}++; $delta{$_->[1]}-- }
my ($cur, $max, $over, $prev, %hist) = (0, 0, 0, 0);
for my $tk (sort { $a <=> $b } keys %delta) { $hist{$cur} += $tk - $prev if $cur; $over += $tk - $prev if $cur > 5; $prev = $tk; $cur += $delta{$tk}; $max = $cur if $cur > $max }
printf "loop length %d ticks; max overlapping sampled notes %d; time above 5: %.1f%%\n", $maxtick, $max, 100*$over/$maxtick;
printf "  %d at once: %.1f%%\n", $_, 100*$hist{$_}/$maxtick for sort { $a <=> $b } keys %hist;
