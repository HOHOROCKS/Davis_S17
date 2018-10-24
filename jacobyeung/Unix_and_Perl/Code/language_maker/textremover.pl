#!/usr/bin/perl
#text remover
use strict; use warnings;
#removes certain punctuation and text

die "Must input file\n" if (@ARGV != 1);

my ($file) = @ARGV;


my %wordcount;
open (my $in, "<$file") or die "Can't open $file\n";
my $outfile = "text created from $file";
open (my $out, ">$outfile") or die "error creating $outfile";
while (my $words = <$in>) {
	s/[^[:ascii:]]//g;
}

close ($out);
