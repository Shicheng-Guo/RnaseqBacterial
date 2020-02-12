#!/usr/bin/perl -w

use strict;
my %id;
open F,"SRR2ID.txt";
while(<F>){
my($id1,$id2)=split/\s+/;
$id{$id1}=$id2;
}

my @file=glob("*.xls");
foreach my $file(@file){
my(undef,$SRR,undef)=split/_|\./,$file;
my $new= $id{$SRR};
system(cp $file $new);
}
