#!/usr/bin/perl
#multplication
use strict; use warnings;

my ($first, $second) = @ARGV;
#usingARGV ($first, $second);
sub usingARGV {
	print "Which two numbers do you want multiplied?\n";
	my $answer = $first * $second;
	print "$first * $second = $answer\n";
}






















