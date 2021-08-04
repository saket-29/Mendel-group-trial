#!/usr/bin/perl
use warnings;
use strict;

my $str = 'Shreyashi Chakravarty, shcha1997@gmail.com, @Shreyashi, Public Health and Genomic Epidemiology, @ShreyashiC'; 


my $filename = 'C:\Users\Shreyashi\Documents\GitHub\Mendel-group-trial\Shreyashi\Output\output.txt';


open(FH, '>', $filename) or die $!;

print FH $str;

close(FH);

print "Writing to file successfully!\n";
