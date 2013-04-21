sim2arlequin <-
function (x,filename) {
	raw<-rbind(x$PA,x$PB)
	ind<-c(rownames(x$PA),rownames(x$PB))
	pop<-c(rep("PA",nrow(x$PA)),rep("PB",nrow(x$PB)))
	if (is.na(x$F1) == F){raw<-rbind(raw,x$F1)
	ind<-c(ind,rownames(x$F1))
  pop<-c(pop,rep("F1",nrow(x$F1)))}
	if (is.na(x$BxA) == F){raw<-rbind(raw,x$BxA)
	ind<-c(ind,rownames(x$BxA))
	pop<-c(pop,rep("BxA",nrow(x$BxA)))}
  if (is.na(x$BxB) == F){raw<-rbind(raw, x$BxB)
	ind<-c(ind,rownames(x$BxB))
  pop<-c(pop,rep("BxB",nrow(x$BxB)))} 
   col<-c("ind","pop",colnames(raw))
   mat<-as.data.frame(cbind(ind,pop,raw))
   colnames(mat)<-col
	manb <- dim(mat)[2]-2
 	innb <- dim(mat)[1]
	mat <- mat[1:(innb), ]
	mat <- mat[order(mat[ ,2]), ]
	pops <- as.vector(mat[ , 2])
	inds <- as.vector(mat[ , 1])
	matm <- as.x(mat[ , (3:(manb+2))])
	popsizes <- table (pops)
	npop <- length(popsizes)
	popnames <- vector(mode="character", npop)
	n <- 0
	
	cat("[Profile]", "\n", "Title=", "\"", "AFLP data", "\"", "\n", "NbSamples=", file=filename, sep="")
	cat(npop, "\n", "DataType=RFLP", "\n", "GenotypicData=0", "\n", "LocusSeparator=NONE", "\n", "MissingData='?'", 
  "\n", "\n", file=filename, sep="", append=TRUE)
	cat("[Data]", "\n", "[[Samples]]", "\n", "\n", file=filename, append=TRUE)
	
	for (i in 1:npop) {
		cat("SampleName=", "\"", pops[n + 1], "\"", "\n", file=filename, sep="", append=TRUE) 	
		cat("SampleSize=", popsizes[i], "\n", file=filename, append=TRUE) 
		cat("SampleData= {", "\n", file=filename, append=TRUE)	
		for (j in 1: popsizes[i]) {
			cat(inds[n + j], "\t", "1", "\t", matm[(n + j), ], "\n", file=filename, append=TRUE)}
		cat("}", "\n", "\n",  file=filename, append=TRUE)
		popnames[i] <- pops[n+1]
		n <- n + popsizes [i]
		}

	cat("[[Structure]]", "\n", "\n", "StructureName = ", "\"", "one group", "\"", "\n", "NbGroups = 1", "\n", file=filename, sep="", append=TRUE)
	cat("\n", "Group ={", "\n", file=filename, sep="", append=TRUE)
	for (i in 1:npop) {
		cat("\"", popnames[i], "\"", "\n", file=filename, append=TRUE, sep="")	}
	cat("}", "\n", file=filename, append=TRUE)
}
