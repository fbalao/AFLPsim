Arlequin <- function (matriz,filename) {
	raw<-rbind(matriz$PA,matriz$PB,matriz$F1)
   ind<-c(rownames(matriz$PA),rownames(matriz$PB),rownames(matriz$F1))
   pop<-c(rep("PA",nrow(matriz$PA)),rep("PB",nrow(matriz$PB)),rep("F1",nrow(matriz$F1)))
   col<-c("ind","pop",colnames(raw))
   mat<-as.data.frame(cbind(ind,pop,raw))
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

