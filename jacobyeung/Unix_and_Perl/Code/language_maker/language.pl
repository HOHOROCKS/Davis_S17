#!/usr/bin/perl
#language maker
use strict; use warnings;
#finds the frequencies of diagrams and trigrams of different languages and creates a new  language based on the frequencies

die "Must input inputfile and output file and letter amount\n" if (@ARGV != 3);

my ($file, $outputfile, $amount) = @ARGV;
die "Must specify word or letter\n" unless ($amount eq "one" or "two" or "three");
my %lettercountone;
my %lettercounttwo;
my %lettercountthree;

if ($amount = 'one') {
	lettercountone();
}

if ($amount = 'two') {
	lettercounttwo();
}

if ($amount = 'three') {
	lettercountthree();
}

open (my $in, "<$file") or die "Can't open $file\n";

sub lettercountone {	
	while ($one = <$in>) {
		chomp $one;
		my @oneletter = split (//, $one);
		foreach my $letter (@oneletter) {
			$lettercountone{$letter}++;
		}
		print 


