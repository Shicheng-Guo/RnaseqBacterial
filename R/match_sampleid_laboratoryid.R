data1<-read.table("https://raw.githubusercontent.com/Shicheng-Guo/RnaseqBacterial/master/extdata/S24_id.txt",head=F)
x<-unique(unlist(lapply(strsplit(as.character(data[,1]),split="_"),function(x) x[1])))
data2<-read.table("https://raw.githubusercontent.com/Shicheng-Guo/RnaseqBacterial/master/extdata/S30_id.txt",head=T,sep="\t")
y<-as.numeric(unique(unlist(lapply(strsplit(as.character(data2[,1]),split=" "),function(x) x[2]))))
x[! x %in% y]
