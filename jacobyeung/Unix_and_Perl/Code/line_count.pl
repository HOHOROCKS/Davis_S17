#!/usr/bin/perl
#line count
use strict; use warnings;

die "Usage: line_count.pl <file>\n" if (@ARGV !=1);
print "Processing file $ARGV[0]\n";

my $lines = 0;
my $characters = 0;

while (my $line = <>) {
	$lines++;
	$characters += length($line);
}
print "$lines\t$characters\n";
