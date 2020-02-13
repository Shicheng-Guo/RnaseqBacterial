for i in $(ls *.fastq | rev | cut -c 19- | rev | uniq)
do
mkdir $i
mv $i* ./$i
done

for i in $(cat xx)
do
echo $i
echo \#PBS -N $i  > $i.job
echo \#PBS -l nodes=1:ppn=12 >> $i.job
echo \#PBS -M Guo.shicheng\@marshfieldresearch.org >> $i.job
echo \#PBS -m abe  >> $i.job
echo cd $(pwd) >> $i.job
echo sh \.\/samsa2.sh $i >>$i.job
qsub  $i.job
done

