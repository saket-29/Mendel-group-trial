#!/usr/bin/perl
use warnings;
use strict;

my $str = 'Shreyashi Chakravarty, shcha1997@gmail.com, @Shreyashi, Public Health and Genomic Epidemiology, @shellyneedswine'; 

my $filename = 'F:\HackBio\Task 1\output.txt';

open(FH, '>', $filename) or die $!;

print FH $str;

close(FH);

print "Writing to file successfully!\n";
