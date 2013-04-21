sim2Newhybrids<- function (matriz,filename) {
	matriz$PA[matriz$PA==0]<-"-"
	matriz$PA[matriz$PA==1]<-"+"
	matriz$PB[matriz$PB==0]<-"-"
	matriz$PB[matriz$PB==1]<-"+"
	matriz[[3]][matriz[[3]]==0]<-"-"
	matriz[[3]][matriz[[3]]==1]<-"+"
	matriz[[4]][matriz[[4]]==0]<-"-"
	matriz[[4]][matriz[[4]]==1]<-"+"
	matriz[[5]][matriz[[5]]==0]<-"-"
	matriz[[5]][matriz[[5]]==1]<-"+"
	nr<-nrow(matriz[[3]])
	nc<-ncol(matriz[[3]])
	admix.gen <-matrix(ncol=nc)
	if (is.na(matriz[[3]]) == F){admix.gen<-rbind(admix.gen,matriz[[3]])}
	admix.gen<-admix.gen[,which(colMeans(is.na(admix.gen)) < 1)]
	if (is.na(matriz[[4]]) == F){admix.gen<-rbind(admix.gen,matriz[[4]])}
	admix.gen<-admix.gen[,which(colMeans(is.na(admix.gen)) < 1)]
	if (is.na(matriz[[5]]) == F){admix.gen<-rbind(admix.gen,matriz[[5]])}
	admix.gen<-admix.gen[,which(colMeans(is.na(admix.gen)) < 1)]
	admix.gen <- admix.gen[complete.cases(admix.gen),] 
	raw<-rbind(matriz$PA,matriz$PB,admix.gen)
  ind<-rownames(raw)
	ninds<-length(ind)
	ind2<-seq(1,ninds,1)
	category<-c(rep("z0",nrow(matriz$PA)),rep("z1",nrow(matriz$PB)),rep("",nrow(admix.gen)))
	pop<-c(rep("1",nrow(matriz$PA)),rep("2",nrow(matriz$PB)),rep("3",nrow(admix.gen)))
	col<-c("ind","pop",colnames(raw))
	mat<-as.data.frame(cbind(ind2,pop,raw))
	colnames(mat)<-col
	manb <- dim(mat)[2]-2
	innb <- dim(mat)[1]
	mat <- mat[1:(innb), ]
	mat <- mat[order(mat[ ,2]), ]
	pops <- as.vector(mat[ , 2])
	inds <- as.vector(mat[ , 1])
	matm <- as.matrix(mat[ , (3:(manb+2))])
	popsizes <- table (pops)
	npop <- length(popsizes)
	popnames <- vector(mode="character", npop)
	n <- 0
	
	cat("NumIndivs ", ninds, "\n", file=filename, sep="")
	cat("NumLoci ", manb, "\n", "Digits 1", "\n", "Format Lumped", "\n", file=filename, sep="", append=TRUE)
	cat("LocusNames", col[3:(manb+2)], "\n", "\n", file=filename, sep="\t", append=TRUE)   
	
	for (i in 1:npop) {
	  for (j in 1: popsizes[i]) {
	    cat(inds[n + j], "\t", category[n + j], "\t", matm[(n + j), ], "\n", file=filename, append=TRUE)}
	  popnames[i] <- pops[n+1]
	  n <- n + popsizes [i]
	}
}