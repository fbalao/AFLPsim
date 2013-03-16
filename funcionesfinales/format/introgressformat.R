introgressformat<-function(matriz){
parental1<-t(matriz[[1]])
parental2<-t(matriz[[2]])
admix.gen<-t(matriz[[3]])
loci<-cbind(colnames(matriz[[1]]),rep("D",ncol(matriz[[1]])))
colnames(loci)<-c("locus","type")
introgress<-list(parental1,parental2,admix.gen,loci)
names(introgress)<-c("parental1","parental2","admix.gen","loci")
res<-list(introgress)
res
}

