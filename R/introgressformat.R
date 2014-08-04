introgressformat <-
function(matriz){
parental1<-t(matriz$PA)
parental2<-t(matriz$PB)
admix.gen<-t(matriz$F1)
loci<-cbind(colnames(matriz$PA),rep("D",ncol(matriz$PA)))
colnames(loci)<-c("locus","type")
introgress<-list(parental1,parental2,admix.gen,loci)
names(introgress)<-c("paretal1","parental2","admix.gen","loci")
introgress
}
