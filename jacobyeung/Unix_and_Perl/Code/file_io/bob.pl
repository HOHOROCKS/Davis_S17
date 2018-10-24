#!/usr/bin/perl
#print first hundred multiples of n
use warnings; use strict;

my ($multiple) = @ARGV;
my $times = 1;
my $multiple_add = $multiple;
=pod
while ($times < 101) {
	print "This is multiple number $times ";
	print "$multiple_add\n";
	$times++;
	$multiple_add += $multiple;
	
}
=cut

=pod
foreach (1..100){
	my $n = $multiple*$_;
	print "$n\n";
}
=cut
for (my $i = 1; $i <= 100; $i++){
	my $n = $multiple*$i;
	print "$n\n";
}
