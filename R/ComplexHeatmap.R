library("gplots")
library("circlize")
library("ComplexHeatmap")

set.seed(123)

data<-read.csv(file="https://raw.githubusercontent.com/Shicheng-Guo/RnaseqBacterial/master/extdata/RPKM.dual-RNA-seq.csv",row.names = 1)
anno<-read.csv(file="https://raw.githubusercontent.com/Shicheng-Guo/RnaseqBacterial/master/extdata/Saminfo.RPKM.dual-RNA-seq.csv",row.names = 1)

annodf<-data.frame(cid=anno$CID,gender=anno$Gender,age=anno$Age,severity=anno$Severity)
column_ha = HeatmapAnnotation(CID=anno$CID,Gender=anno$Gender,Age=anno$Age,Severity=anno$Severity,ST=anno$ST)
Heatmap(scale(data.matrix(data),center = T,scale=F),name="RPKM",top_annotation = column_ha)

column_ha = HeatmapAnnotation(CID=anno$CID,Gender=anno$Gender,Age=anno$Age,Severity=anno$Severity,ST=anno$ST)
Heatmap(data.matrix(data),name="RPKM",top_annotation = column_ha)
