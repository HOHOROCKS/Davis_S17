#!/usr/bin/perl
#word finder
use strict; use warnings;
#finds words in a file and prints them and they're amount out

die "Must input file or word or letter\n" if (@ARGV != 1);

my ($file) = @ARGV;
my %wordcount;
my %lettercount;

open (my $in, "<$file") or die "Can't open $file\n";
my $outfile = "Text Created From Whole Words From $file\n";
open (my $out, ">$outfile") or die "error creating $outfile";
while (my $words = <$in>){
	chomp $words;
	my @individualword = split(/\s+/, $words);
	foreach my $word (@individualword){
		chomp $word;
		if (not exists $wordcount{$word}){
			$wordcount{$word} = 1
		}
		else {
			$wordcount{$word}++
		}
	}
}
my @skeys = sort { $wordcount{$b} <=> $wordcount{$a} } keys %wordcount;

foreach my $word (@skeys) {
	            print $out "$word\t$wordcount{$word}\n";
}

#finds the total number of digrams
use List::Util 'sum';
my $value_count = sum values %wordcount;


#changes hash values from frequencies to relative frequencies

foreach my $rel_freq (values %wordcount){
	        $rel_freq /= $value_count;

}
my @cum_sum;

foreach my $cumsum (values %wordcount){
	        push (@cum_sum, $cumsum);
}

my $sum = 0;
for (my $i = 0; $i < @cum_sum; $i++){
        $sum += $cum_sum[$i];
	        @cum_sum[$i] = $sum;
}

my $i = 0;
foreach my $cum_sum (values %wordcount){
	        $cum_sum = $cum_sum[$i];
		        $i++;
}

#reverse hash so frequencies are keys and digrams are values
my @keys;
my $a = 0;
foreach my $key (keys %wordcount){
	        $keys[$a] = $key;
		        $a++;
}

#my %reversed_wordcount;
#while(my ($key, $value) = each %wordcount){
#       $reversed_wordcount{$value} = $key;
#}
#%wordcount = %reversed_wordcount;


#prints out digrams at observed frequencies
my $punctuation = join '|', map { quotemeta } qw(& ! : ' . ; ? ,);

for my $j (0..100) {
	        my $outcome = rand();
		for my $k (0..$#cum_sum) {
			if ($keys[$k] =~ m/\"|\/|\<|\>|\\|\`|\~|\@|\#|\$|\%|\^|\*|[0-9]|\(|\)|\[|\]|\{|\}/) {
				print $out "";
			}
		        elsif ($keys[$k] =~ m/\s|[-]/){								                        print $out "";
			}
			elsif ($keys[$k] =~ /($punctuation)/) {
			      $keys[$k] = "$1 ";								                        print $out $keys[$k];
			}
			else {
	                     print $out $keys[$k];
			}
		}
}													
close($in);

#if ($word_or_letter eq 'letter'){
#	foreach my $letter (sort {$lettercount{$b} <=> $lettercount{$a}} keys %lettercount){
#		print "$letter\t$lettercount{$letter}\n";
#	}
#}


