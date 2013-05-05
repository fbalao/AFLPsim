sim2structure <- function (matriz,filename) {
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
	popnames <- as.vector(mat[ , 2])
	indnames <- as.vector(mat[, 1])
	matm <- as.matrix(mat[ , (3:(manb+2))])
		
	poptab <- table(popnames)
	nbpop <- length(poptab)
	numbers <- 0
	for (n in 1:nbpop){
	 numbers <- c(numbers, c(rep(n, poptab[n])))} 
  numbers <- numbers[2:(innb + 1)]
	
	cat(c(rep(0, manb)), "\n", file= filename,  sep="\t")
 	for (i in 1: innb) {
	cat(indnames[i], numbers[i], matm[i , ], "\n", file= filename, append=TRUE, sep="\t")	
	cat(indnames[i], numbers[i], matm[i , ], "\n", file= filename, append=TRUE, sep="\t")	
	}
}
