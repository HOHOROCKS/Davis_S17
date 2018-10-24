#!/usr/bin/perl
#counting
use strict; use warnings;

#print "Hello, type names.\n";
#my $names = <STDIN>;
#my @names = split (",", $names);
#print @names;
#my @sorted_names = sort @names;
#print "@sorted_names\n";

chomp (my @lines = <STDIN>);
my @sorted = sort @lines;
print scalar(@lines);
