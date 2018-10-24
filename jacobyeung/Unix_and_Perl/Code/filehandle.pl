#!/usr/bin/perl
#using file handles
use strict; use warnings;

my ($file) = @ARGV;
open (my $in, "< $file");
while (my $line = <$in>){
	print "$line";
}
close ($in);
