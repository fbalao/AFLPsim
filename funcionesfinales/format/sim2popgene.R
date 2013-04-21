sim2popgene <- function (matriz,filename) {
	if(class(matriz[[1]])=="list"){
	  matriz<-unlist(matriz,recursive=F)
	  matriz <- lapply(matriz, function(x)x[,-1 ])
	}
  N<-length(matriz)
  if (names(matriz)[N]=="SelMarkers")
    matriz$SelMarkers<-NULL
	raw<- do.call("rbind", matriz)
   ind<-rownames(raw)
   popnames<-names(matriz)
   n<-numeric()
   for (i in 1:N){ 
   n[i]<-nrow(matriz[[i]])}
   pop<-rep(popnames[1:N],n[1:N])
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
		
	cat("/* AFLP Data Set */", "\n", "Number of populations = ", npop, "\n", file=filename, sep="")
	cat("Number of loci = ", manb, "\n", "Locus name :", "\n", file=filename, sep="", append=TRUE) 
  cat(col[3:(manb+2)], "\n", "\n", file=filename, sep=" ", append=TRUE)   
	
	for (i in 1:npop) {
		cat("name = ", pops[n + 1], "\n", "fis = 0", "\n", file=filename, sep="", append=TRUE) 	
		for (j in 1: popsizes[i]) {
			cat(matm[(n + j), ], "\n", file=filename, sep="", append=TRUE)}
		cat("\n", "\n",  file=filename, append=TRUE)
		popnames[i] <- pops[n+1]
		n <- n + popsizes [i]
		}
}
