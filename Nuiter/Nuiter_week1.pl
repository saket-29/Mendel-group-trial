#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

my $name = 'Angel Perez';
my $email= 'nuiter@gmail.com';
my $slacknick='@Nuiter';
my $biostack='Genomics, DS, M&D Learning';
my $twit_handle='@Nuiter_Qur';  

my $out_dir = 'output';
mkdir $out_dir;


my $arch = 'D:\Users\Angel\Documents\Hackbio\output\output.txt';
#say $output; output control

open(IN, '>', $arch) or die $!;

print IN $output;
print "Success writing your file!\n";