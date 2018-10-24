#!/usr/bin/perl
#digram finder
use strict; use warnings;
#finds digrams in a file and prints them and their frequencies out

die "Must input file\n" if (@ARGV != 1);

my ($file) = @ARGV; 


my %wordcount;
open (my $in, "<$file") or die "Can't open $file\n";
my $outfile = "text created from $file";
open (my $out, ">$outfile") or die "error creating $outfile";
while (my $words = <$in>) {
	    chomp $words;
	    my $last_duo_idx = length($words) - 2;
	    for my $i (0 .. $last_duo_idx) {
	    my $duo = substr($words, $i, 2); 
	    ++$wordcount{$duo};
	}   
}

my @skeys = sort { $wordcount{$b} <=> $wordcount{$a} } keys %wordcount;

#foreach my $word (@skeys) {
#	    print $out "$word\t$wordcount{$word}\n";
	    
#} 

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
#	$reversed_wordcount{$value} = $key;
#}
#%wordcount = %reversed_wordcount;

#prints out digrams at observed frequencies

for (my $j = 0; $j <100000; $j++){
	my $outcome = rand();
	for (my $k = 0; $k < @cum_sum; $k++){
		if ($cum_sum[$k] >= $outcome){
			if ($keys[$k] =~ m/\"|\/|\<|\>|\\|\`|\~|\@|\#|\$|\%|\^|\*|[0-9]/) {
				print $out "";
			}
			if ($keys[$k] =~ m/\s/){
				print $out " ";
			}
			elsif ($keys[$k] =~ m/\&/){
				print $out " and ";
			}
			elsif ($keys[$k] =~ m/\!/){
				print $out "! ";
			}
			elsif ($keys[$k] =~ m/\:/){
				print $out ": ";
			}
			elsif ($keys[$k] =~ m/\'/){
				print $out "' ";
			}
			elsif ($keys[$k] =~ m/\./){
				print $out ". ";
			}
			elsif ($keys[$k] =~ m/\;/){
				print $out "; ";
			}
			elsif ($keys[$k] =~ m/\?/){
				print $out "? ";
			}
			elsif ($keys[$k] =~ m/\,/){
				print $out ", ";
			}
			else {
				print $out "$keys[$k]";
			}
			last;
		}
	}
#	print "$outcome\n";
}

close($in);
