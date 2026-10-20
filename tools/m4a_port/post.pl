# Post-processes dis.pl output for a ported song.
# usage: perl post.pl name "Title" songNumber "cut tracks" "octave-down tracks" "note on cuts" < raw.s
use strict;
my ($name, $title, $num, $cut, $down, $cutnote) = @ARGV;
my @cut = split ' ', $cut; my @down = split ' ', $down;
local $/; my $s = <STDIN>;
my ($tc) = $s =~ /\t\.byte\t(\d+)\t\@ NumTrks/ or die "count";
for my $t (@cut) {
    my $next = $t + 1;
    $s =~ s/\@\*+ Track $t \*+\@\n.*?(?=\@\*+ Track \d+ \*+\@\n|\@\*{50,}\@\n\t\.align)//s or die "cut $t";
    $s =~ s/\t\.word\t${name}_$t\n// or die "word $t";
}
$s =~ s/\t\.byte\t$tc\t\@ NumTrks/"\t.byte\t".($tc - @cut)."\t\@ NumTrks"/e;
for my $t (@down) { $s =~ s/(${name}_$t:\n\t\.byte\t\tKEYSH , ${name}_key)\+0/$1-12/ or die "keysh $t" }
$s =~ s/\.equ\t${name}_grp, VOICEGROUP/.equ\t${name}_grp, voicegroup_srt_og/;
$s =~ s/\.equ\t${name}_rev, 0xb0/.equ\t${name}_rev, reverb_set+48/ or die "rev";
my $hdr = "\@ \"$title\" from Super Robot Taisen: Original Generation (song $num), ported from sound/import.\n";
$hdr .= "\@ Track numbers match the original. $cutnote\n" if @cut;
$hdr .= "\@ Track".(@down > 1 ? "s " : " ").join(", ", @down)." ".(@down > 1 ? "are" : "is")." shifted down an octave because Emerald's waves repeat twice.\n" if @down;
print "$hdr\n$s";
