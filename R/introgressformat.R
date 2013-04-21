introgressformat <-
function(matriz){
options(warn=-1)
parental1<-t(matriz[[1]])
parental2<-t(matriz[[2]])
n<-nrow(t(matriz[[1]]))
admix.gen <-matrix(nrow=n)
if (is.na(matriz[[3]]) == F){admix.gen<-cbind(admix.gen,t(matriz[[3]]))}
if (is.na(matriz[[4]]) == F){admix.gen<-cbind(admix.gen,t(matriz[[4]]))}
if (is.na(matriz[[5]]) == F){admix.gen<-cbind(admix.gen,t(matriz[[5]]))}
if (is.na(matriz[[6]]) == F){admix.gen<-cbind(admix.gen,t(matriz[[6]]))}
admix.gen<-admix.gen[,which(colMeans(is.na(admix.gen)) < 1)]

loci<-cbind(colnames(matriz[[1]]),rep("D",ncol(matriz[[1]])))
colnames(loci)<-c("locus","type")
introgress<-list(parental1,parental2,admix.gen,loci)
names(introgress)<-c("parental1","parental2","admix.gen","loci")
introgress

}
