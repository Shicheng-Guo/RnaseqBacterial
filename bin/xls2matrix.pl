#!/usr/bin/perl -w

# Merge bigWigAverageOverBed output to matrix (first column is region name and last column is average value)
# Contact: Shicheng Guo; Shihcheng.Guo@Gmail.com
# Version 1.3
# Update: 2020-02-10

# Following R script to make boxplot to check the variation
# mitometh<-read.table("C:\\Users\\shicheng\\Downloads\\CHR.Methylation.txt",head=T,row.names=1,as.is=T)
# colnames(mitometh)<-unlist(lapply(colnames(mitometh),function(x) substr(x,1,6)))
# rownames(mitometh)<-lapply(rownames(mitometh),function(x) unlist(strsplit(x,"[:-]"))[2])
# boxplot(t(mitometh),outline = F,horizontal = T)
# par(las=2,cex=0.6,mar=c(6,6,1,4))
# boxplot(t(mitometh),outline = T,horizontal = T)
# par(las=2,cex=0.6,mar=c(6,6,1,4))
# boxplot((mitometh),outline = T,horizontal = T)

## bigWigAverageOverBed input.bw inputbed output.tab
## perl tab2matrix.pl > output.matrix.txt
use strict;
use Cwd;
my $dir=getcwd;
chdir $dir;
my $chr=shift @ARGV;
my @file=glob("*$chr.xls");

my %data;
my %key;
my %sam;
foreach my $sam(@file){
$sam{$sam}=$sam;
open F,$sam;
while(<F>){
        next if /RelativeActivity/;
        my $value;
        chomp;
        my @line=split /\t/;
        my $key=$line[2];
        $value=$line[0];
        $key{$key}=$key;
        $data{$key}{$sam}=$value;
        }
}
my @sam;
foreach my $sam(sort keys %sam){
        push(@sam,$sam);
}
my $head=join("\t",@sam);
print "\t$head\n";

foreach my $key(sort keys %data){
        print "$key";
        foreach my $sam (sort keys %sam){
        if( ! exists $data{$key}{$sam}||! defined $data{$key}{$sam}||$data{$key}{$sam}=~/NA/){
        print "\t0";
        }else{
        my $R=sprintf("%.2f",$data{$key}{$sam});
        print "\t$R";
        }
        }
        print "\n";
}
