#!/usr/bin/perl
use warnings;
use strict;

my $s1 = 'Shreyashi Chakravarty,';  
my $s2 = 'shcha1997@gmail.com,';
my $s3 = '@Shreyashi,';
my $s4 = 'Public Health and Genomic Epidemiology,'; 
my $s5 = '@ShreyaCha,'; 

hd( $s3, $s5 );
sub hd{ length( $_[ 0 ] ) - ( ( $_[ 0 ] ^ $_[ 1 ] ) =~ tr[\0][\0] ) }


my $filename = 'C:\Users\Shreyashi\Documents\GitHub\Mendel-group-trial\Shreyashi\output\output.txt';

open(FH, '>', $filename) or die $!;

print FH $s1,$s2,$s3,$s4,$s5,
print "", hd( $s1, $s2 );


close(FH);

print "Writing to file successfully!\n";
