#!/usr/bin/perl
#reversamatic.pl
use strict; use warnings;

die "Please specify a suitable text file\n" if (@ARGV != 1);
my ($infile) = @ARGV;

my $outfile = "$infile.rev";

open (my $in, "<$infile") or die "error reading $infile. $!";
open (my $out, ">$outfile") or die "error creating $outfile. $!";

while (<$in>) {
	chomp;
	my $rev = reverse;
	print "$rev\n";
	print $out "$rev\n";
}
print "Success, file printed\n";
close $in;
close $out;
