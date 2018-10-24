#!/usr/bin/perl
#word finder
use strict; use warnings;
#finds words in a file and prints them and they're amount out

die "Must input file or word or letter\n" if (@ARGV != 2);

my ($file, $word_or_letter) = @ARGV; 
die "Must specify word or letter\n" unless ($ARGV[1] eq "word" or "letter");
my %wordcount;
my %lettercount;

open (my $in, "<$file") or die "Can't open $file\n";

while (my $words = <$in>){
	chomp $words;
#	my @individualword = substr($word, my  $i, 2);
	my @individualword = split(/s+/, $words);
#	for (my $i = 0; $i<length($words); $i++){
#		my $duo = substr($word, $i, 2);
#		push @individualword, $duo;
#	}
	my @individualletter = split(/\s+/, $words);
	foreach my $word (@individualword){
		chomp $word;
		if (not exists $wordcount{$word}){
			$wordcount{$word} = 1
		}
		else {
			$wordcount{$word}++
		}
	}
	for my $letter (@individualletter){
		chomp $letter;
		if (not exists $lettercount{$letter}){
			$lettercount{$letter} = 1;
		}
		else {
			$lettercount{$letter}++;
		}
	}		
#	foreach(@individualletter){
#		my $letter=ord($_);
#		$letter-=1;
#		print chr($letter)}
}


if ($word_or_letter eq 'word'){
	foreach my $word (sort {$wordcount{$b} cmp $wordcount{$a}} keys %wordcount){
		print "$word\t$wordcount{$word}\n";
	}
}
elsif ($word_or_letter eq 'letter'){
	foreach my $letter (sort {$lettercount{$b} <=> $lettercount{$a}} keys %lettercount){
		print "$letter\t$lettercount{$letter}\n";
	}
}

close($in);
