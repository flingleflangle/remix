use strict; use Digest::MD5 qw(md5_hex);
my ($romfile, $vgaddr, @progs) = @ARGV;
open my $f, '<:raw', $romfile or die; local $/; my $r = <$f>; close $f;
sub u32 { unpack('V', substr($r, $_[0], 4)) }
my $vg = hex($vgaddr) - 0x08000000;
my %tn = (0=>'DirectSound',8=>'DirectSound',0x10=>'DirectSoundFixed',0x18=>'DirectSoundFixed',1=>'Square1',9=>'Square1',2=>'Square2',0xa=>'Square2',3=>'Wave',0xb=>'Wave',4=>'Noise',0xc=>'Noise',0x40=>'KeySplit',0x80=>'Drumset');
sub sampinfo { my $s = shift; my ($flags, $freq, $loop, $size) = unpack('V4', substr($r, $s, 16));
    return sprintf("rate %5.0f Hz len %6d %s md5 %s", $freq/1024, $size, ($flags & 0x40000000 ? "loop " . $loop : "noloop"), substr(md5_hex(substr($r, $s+16, $size)),0,10)); }
sub entry { my ($o, $ind) = @_;
    my ($type, $key, $b2, $b3) = unpack('C4', substr($r, $o, 4)); my $ptr = u32($o+4); my ($a,$d,$s,$rl) = unpack('C4', substr($r,$o+8,4));
    my $t = $tn{$type} // sprintf("type%02x",$type);
    my $txt = sprintf("%s%-16s key %3d pan/swp %02x/%02x adsr %3d %3d %3d %3d", $ind, $t, $key, $b2, $b3, $a,$d,$s,$rl);
    if ($t =~ /^DirectSound/) { $txt .= "  " . sampinfo($ptr - 0x08000000) }
    elsif ($t eq 'Wave') { $txt .= "  wave md5 ".substr(md5_hex(substr($r, $ptr-0x08000000, 16)),0,10) }
    elsif ($t eq 'Square1' || $t eq 'Square2' || $t eq 'Noise') { $txt .= sprintf("  duty/period %d", $ptr) }
    return ($txt, $t, $ptr);
}
for my $p (@progs) {
    my ($txt, $t, $ptr) = entry($vg + 12*$p, "");
    printf "prog %3d: %s\n", $p, $txt;
    if ($t eq 'Drumset' || $t eq 'KeySplit') {
        my $sub = $ptr - 0x08000000;
        if ($t eq 'KeySplit') { my $tbl = u32($vg+12*$p+8) - 0x08000000; my %seen; for my $k (0..127) { my $i = ord substr($r,$tbl+$k,1); next if $seen{$i}++; my ($t2) = entry($sub+12*$i, "      "); print "    split idx $i from key $k: $t2\n" } }
        else { print "    (drum kit at ".sprintf("%x",$ptr).")\n" }
    }
}
