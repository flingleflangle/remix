# usage: verify2.pl src.bin srcTable songIdx built.gba builtHeader "srcTrack:len ..."
use strict;
my ($srcfile, $srctbl, $idx, $dstfile, $dsthdr, $map) = @ARGV;
sub slurp { open my $f, '<:raw', shift or die; local $/; <$f> }
my $s = slurp($srcfile); my $d = slurp($dstfile);
sub u32 { unpack('V', substr($_[0], $_[1], 4)) }
my $sh = u32($s, hex($srctbl) + 8*$idx) - 0x08000000; my $dh = hex($dsthdr) - 0x08000000;
my @m = map { [split /:/] } split ' ', $map;
my $dtc = ord substr($d, $dh, 1);
printf "built: %d tracks, voicegroup 0x%08x\n", $dtc, u32($d, $dh+4);
for my $i (0 .. $dtc-1) {
    my ($st, $len) = @{$m[$i]};
    my $so = u32($s, $sh+8+4*($st-1)) - 0x08000000; my $do = u32($d, $dh+8+4*$i) - 0x08000000;
    my ($k, @diff) = (0);
    while ($k < $len) {
        if (substr($s,$so+$k,1) ne substr($d,$do+$k,1)) {
            my $ok = 0;
            for my $b (0..3) { my $sp = u32($s,$so+$k-$b)-0x08000000; my $dp = u32($d,$do+$k-$b)-0x08000000;
                if ($sp >= $so && $sp < $so+$len && $sp-$so == $dp-$do) { $ok = 1; $k += 4-$b; last } }
            next if $ok;
            push @diff, sprintf("+%d: %02x vs %02x", $k, ord substr($s,$so+$k,1), ord substr($d,$do+$k,1)); $k++;
        } else { $k++ }
    }
    printf "built track %2d = original %2d (%4d bytes): %s; next byte 0x%02x\n", $i+1, $st, $len, @diff ? join("; ", @diff) : "identical", ord substr($d,$do+$len,1);
}
