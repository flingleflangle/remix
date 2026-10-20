use strict; use Compress::Zlib;
my ($in, $out) = @ARGV;
open my $f, '<:raw', $in or die; local $/; my $d = <$f>; close $f;
my ($sig, $ver, $rsv, $psz, $crc) = unpack('a3 C V V V', $d);
die "not PSF" unless $sig eq 'PSF';
printf "version 0x%02x reserved %d program %d\n", $ver, $rsv, $psz;
my $prog = uncompress(substr($d, 16 + $rsv, $psz)) // die "zlib fail";
my ($entry, $off, $size) = unpack('V V V', $prog);
printf "entry 0x%08x offset 0x%08x size %d (unpacked %d)\n", $entry, $off, $size, length($prog) - 12;
my $tags = substr($d, 16 + $rsv + $psz);
print "tags: $tags\n" if length $tags;
if ($out) { open my $o, '>:raw', $out or die; print $o substr($prog, 12); close $o; }
