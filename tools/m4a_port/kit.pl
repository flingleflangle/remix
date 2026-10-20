my ($name, $start, $end, $comment, @pairs) = @ARGV; my %e = @pairs;
print "\@ $comment\nvoice_group $name, $start\n";
for my $k ($start..$end) { print "\t", ($e{$k} // "voice_square_1 60, 0, 0, 2, 0, 0, 15, 0"), "\n" }
