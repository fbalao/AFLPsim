sim2structure <-
function (x,filename) {
	raw<-rbind(x$PA,x$PB,x$F1, x$BxA,x$BxB )
   ind<-c(rownames(x$PA),rownames(x$PB),rownames(x$F1), rownames(x$BxA), rownames(x$BxB))
   pop<-c(rep("PA",nrow(x$PA)),rep("PB",nrow(x$PB)),rep("F1",nrow(x$F1)),rep("BxA",nrow(x$BxA)), rep("BxB",nrow(x$BxB)))
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
