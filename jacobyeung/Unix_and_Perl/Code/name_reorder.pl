#!/usr/bin/perl
#name_reorder
use strict; use warnings;

my @names = qw (fred betty barney dino wilma pebbles bamm-bamm);
print "Enter some numbers from 1 to 7, then press Ctrl-D:\n";
chomp (my @lines = <STDIN>);
my @sorted = sort @lines;
print "@sorted\n";

