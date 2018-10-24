#!/usr/bin/perl
#name multiplication
use strict; use warnings;

print "What is the name you want to print followed by how many times you want to print it?";
my ($name, $times) = @ARGV;
my $namextimes = "\n$name" x $times;
print "$namextimes\n";
