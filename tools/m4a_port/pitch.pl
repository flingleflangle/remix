# Measures the pitch of Emerald samples and of the original game's instrument slots, to catch substitutes
# that play in a different octave. A melodic DirectSound voice's base key doesn't change its pitch, so a
# sample recorded an octave away from its root note plays an octave off; pick another sample instead.
# Noisy or very low sounds can measure an octave off, so compare against the original before changing anything.
# usage: perl pitch.pl lib.bin 0x<voicegroup address> <original slots...> -- <Emerald sample names...>
use strict;
my ($lib, $vg, @args) = @ARGV; $vg = hex($vg) - 0x08000000;
my (@slots, @samples, $after); for (@args) { if ($_ eq '--') { $after = 1 } elsif ($after) { push @samples, $_ } else { push @slots, $_ } }
sub analyze { my ($name, $rate, @x) = @_;
    my $n = @x; my $start = int($n*0.3); my $len = 2048; $len = $n - $start - 1200 if $start + $len + 1200 > $n;
    return printf("%-40s too short to measure\n", $name) if $len < 200;
    my @c; for my $lag (8 .. 1200) { my $s = 0; for my $i ($start .. $start+$len-1) { $s += $x[$i]*$x[($i+$lag) % $n] } $c[$lag] = $s }
    my $max = 0; $max = $c[$_] > $max ? $c[$_] : $max for 8..1200; my $bl = 0;
    for my $lag (12 .. 1199) { if ($c[$lag] > 0.85*$max && $c[$lag] >= $c[$lag-1] && $c[$lag] >= $c[$lag+1]) { $bl = $lag; last } }
    my $f = $rate/$bl; printf "%-40s %6.1f Hz -> %+5.1f semitones from C4\n", $name, $f, 12*log($f/261.63)/log(2) }
local $/;
open my $g, '<:raw', $lib or die; my $r = <$g>;
for my $slot (@slots) { my $ptr = unpack('V', substr($r, $vg+12*$slot+4, 4)) - 0x08000000; my ($fl,$fr,$lp,$sz) = unpack('V4', substr($r,$ptr,16));
    my @x = map { $_ > 127 ? $_-256 : $_ } unpack('C*', substr($r,$ptr+16,$sz));
    @x = (@x, (@x[$lp..$#x]) x 20) if ($fl & 0x40000000) && @x < 4000;   # repeat a short sample's loop
    analyze("original slot $slot", $fr/1024, @x) }
for my $s (@samples) { open my $f, '<:raw', "sound/direct_sound_samples/$s.bin" or die "$s"; my $d = <$f>; my ($fl,$fr,$lp,$sz) = unpack('V4', $d);
    analyze($s, $fr/1024, map { $_ > 127 ? $_-256 : $_ } unpack('C*', substr($d,16,$sz))) }
