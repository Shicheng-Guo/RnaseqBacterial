setwd("//mcrfnas2/bigdata/Genetic/Projects/shg047/project/RnaseqBacterial/result/strain")
setwd("//mcrfnas2/bigdata/Genetic/Projects/shg047/project/RnaseqBacterial/result/function")

# cd ~/hpc/project/RnaseqBacterial/result/strain
# list.files()
perl xls2matrix.pl > function.tab.matrix.counts.txt
perl xls2matrix.pl > function.tab.matrix.freq.txt

srr<-read.csv("https://raw.githubusercontent.com/Shicheng-Guo/RnaseqBacterial/master/SRR2ID.csv",head=T)

strain1<-read.table("function.tab.matrix.freq.txt",head=T,sep="\t",row.names=1)
strain2<-read.table("function.tab.matrix.counts.txt",head=T,sep="\t",row.names=1)

strain1<-strain1[-which(rownames(strain1)==""),]
strain2<-strain2[-which(rownames(strain2)==""),]

colnames(strain1)<-as.character(srr[match(unlist(lapply(strsplit(colnames(strain1),"[_|.]"),function(x) x[2])),srr[,1]),2])
colnames(strain2)<-as.character(srr[match(unlist(lapply(strsplit(colnames(strain2),"[_|.]"),function(x) x[2])),srr[,1]),2])

matrix1<-t(strain1[order(rowSums(strain1),decreasing = T)[1:500],])
head(matrix1)
matrix1<-scale(data.matrix(matrix1))
head(matrix1)
HeatMap(t(matrix1))

strain1<-data.frame(strain1,Sums=rowSums(strain1))
strain2<-data.frame(strain2,Sums=rowSums(strain2))

strain1<-strain1[order(strain1$Sums,decreasing = T),]
strain2<-strain2[order(strain2$Sums,decreasing = T),]

head(strain1)
head(strain2)

write.csv(strain1,file="function.tab.matrix.freq.csv",quote=F,row.names = F)
write.csv(strain2,file="function.tab.matrix.counts.csv",quote=F,row.names = F)


HeatMap<-function(data,Rowv=T,Colv=T){
  
  #  note: this function include correlation based heatmap (pearson or spearman)
  #  data: row is gene and column is sample
  #  colname and rowname cannot be NULL  
  #  Usage example:
  #  test<- matrix(runif(100),nrow=20)
  #  colnames(test)=c("A","A","A","B","B")
  #  rownames(test)=paste("Gene",1:20,sep="")
  #  HeatMap(test)
  
  library("gplots")
  colors <- colorpanel(75,"midnightblue","mediumseagreen","yellow") 
  colors <-bluered(75)
  
  sidecol<-function(x){
    x<-as.numeric(as.factor(x))
    col<-rainbow(length(table(colnames(data))))
    sapply(x,function(x) col[x])
  }
  
  Hclust=function(x){hclust(x,method="complete")}
  Distfun=function(x){as.dist((1 - cor(t(x))))}
  
  ColSideColors=sidecol(colnames(data))
  
  heatmap.2(data,trace="none", 
            hclust=Hclust,
            distfun=Distfun, 
            cexRow = 1, cexCol = 1,
            ColSideColors=ColSideColors,
            density.info="none",col=colors,
            Colv=Colv,Rowv = Rowv,
            keysize=0.9, margins = c(5, 10)
  )
}







