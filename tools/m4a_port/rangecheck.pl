# Lists notes that fall outside the key range of a keysplit instrument (piano, strings, trumpet, tuba,
# french horn) in voicegroup_srt_og. Those notes read past the instrument and play the placeholder square.
# usage: perl tools/m4a_port/rangecheck.pl sound/songs/mus_*.s
use strict;
open my $t, '<', 'sound/keysplit_tables.inc' or die; my ($cur, %lo, %hi);
while (<$t>) { if (/^keysplit (\w+), (\d+)/) { $cur = $1; $lo{$cur} = $2 } elsif ($cur && /^\s+split \d+, (\d+)/) { $hi{$cur} = $1 - 1 } }
my %ks; open my $v, '<', 'sound/voicegroups/srt_og.inc' or die; my $p = -1;
while (<$v>) { if (/^voice_group/) { $p = 0; next } if ($p >= 0 && /^\t/) { $ks{$p} = $1 if /keysplit_(\w+) \@/; $p++ } }
my %nn = (Cn=>0,Cs=>1,Dn=>2,Ds=>3,En=>4,Fn=>5,Fs=>6,Gn=>7,Gs=>8,An=>9,As=>10,Bn=>11);
for my $song (@ARGV) { my ($voice, $sh, $tr, %bad) = (undef, 0, 0); open my $f, '<', $song or die;
    while (<$f>) { if (/^mus_[a-z_]+_(\d+):$/) { $voice = undef; $sh = 0; $tr = $1 } $sh = $1 if /KEYSH , \w+_key([+-]\d+)/; $voice = $1 if /VOICE , (\d+)/;
        if (/\b([A-G][ns])(M?)(\d)\b/ && defined $voice && $ks{$voice}) { my $k = $nn{$1} + 12*(($2 ? -$3 : $3) + 2) + $sh; my $n = $ks{$voice};
            $bad{"track $tr slot $voice ($n $lo{$n}-$hi{$n}) key $k"}++ if $k < $lo{$n} || $k > $hi{$n} } }
    print "$song: ", (%bad ? join(", ", map { "$_ x$bad{$_}" } sort keys %bad) : "all keysplit notes in range"), "\n" }
