#!/usr/bin/perl
#gen_strings.pl
use strict; use warnings;
#What does this program do?
#this program takes 2 arguments: num lines, line length
die "Usage $0: <num lines> <line length>" if (@ARGV != 2);
my ($num_lines, $len) = @ARGV;
while_generator($num_lines);
print "\n";
for_generator($num_lines);
print "\n";
foreach_generator($num_lines);
print "\n";
sub while_generator{
	my ($num_lines) = @_;
	my $line_num = 0;
	while ($line_num < $num_lines){
		print "$line_num ";
		++$line_num;
	}
}
sub for_generator{
	my ($num_lines) = @_;
	for (my $i = 0; $i < $num_lines; $i++){
		print "$i ";
	}
}
sub foreach_generator{
	my ($num_lines) = @_;
	foreach (0..$num_lines-1){
		print;
		print " ";
	}
}
