#!usr/bin/perl
#random
use strict; use warnings;

my $success_count = 0;
my $total = 10000000;
for my $i (1..$total){
	my $num = rand(4);
	my $num1 = rand(4);
	my $sum = $num + $num1;
	if ($sum >= 6){
		 $success_count++;
	}
}
my $percentage = $success_count/$total;
print "$percentage\n";
