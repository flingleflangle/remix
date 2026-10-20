# For each ported song, lists drum keys played on each kit slot that the Emerald kit leaves as the placeholder square.
use strict;
my %kitfile = (110 => 'srt_og_110', 119 => 'srt_og_119', 125 => 'srt_og_rock_1', 126 => 'srt_og_rock_2', 127 => 'rg_credits');
my %defined;
for my $slot (keys %kitfile) { open my $f, '<', "sound/voicegroups/drumsets/$kitfile{$slot}.inc" or die; my $k = -1;
    while (<$f>) { if (/^voice_group \S+, (\d+)/) { $k = $1; next } if ($k >= 0 && /^\s+voice_/) { $defined{$slot}{$k} = 1 unless /voice_square_1 60, 0, 0, 2, 0, 0, 15, 0/; $k++ } } }
my %nn = (Cn=>0,Cs=>1,Dn=>2,Ds=>3,En=>4,Fn=>5,Fs=>6,Gn=>7,Gs=>8,An=>9,As=>10,Bn=>11);
for my $song (@ARGV) { open my $f, '<', $song or die; my ($voice, $key, %miss);
    while (<$f>) { $voice = $1 if /VOICE , (\d+)/; $voice = undef if /^mus_[a-z_]+_\d+:$/;
        my $sh = 0; $sh = $1 if /KEYSH , \w+_key([+-]\d+)/;
        if (/\b([A-G][ns])(M?)(\d)\b/ && defined $voice && $kitfile{$voice}) { my $k = $nn{$1} + 12*(($2 ? -$3 : $3) + 2); $miss{"$voice:$k"}++ unless $defined{$voice}{$k} } }
    print "$song: ", (%miss ? join(", ", map { my ($v,$k)=split /:/; "kit $v key $k x$miss{$_}" } sort keys %miss) : "all drum keys covered"), "\n" }
