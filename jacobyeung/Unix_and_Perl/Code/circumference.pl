#!/usr/bin/perl
#circ
use strict; use warnings;

print "What is the radius of the circle you want to find the circumference of?\n";
my $radius = <STDIN>;
if ($radius < 0) {die "The circumference is 0\n";}
my $cir = $radius * 3.14159 * 2;
print "The circumference of the circle is $cir\n";
