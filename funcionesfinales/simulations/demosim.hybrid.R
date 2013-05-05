############################################################
###     Model of introgressive hybridization             ###
###   from John Epifanio and David Philipp               ###
###    Reviews in Fish Biology and Fisheries 2001        ###
###                                                      ###
### Authors: F Balao, JL García Castaño & M Escudero &   ###
###                    17/06/2011                        ###
############################################################

  demosim.hybrid<-function(x,M,F)
  {
    if (sum(x)!=1)
    stop ("The initial proportions must sum 1")
    ono<-function(x){
  #Define mating matrix
  #M = matrix(c(1,1,1,0,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,1),ncol=5)
  #Define fitness matrix
  #F=c(1,1,1,1,1)
  L<- x%*%t(x)
  Crosses<- L*M
  Z<-  c((Crosses[1,1]+Crosses[1,5]+Crosses[5,1]),(Crosses[2,2]),(Crosses[1,2]+Crosses[2,1]),(Crosses[3,3]),(Crosses[1,3]+Crosses[3,1]))
  x<- ((Z * F)/sum(Z*F))
  print(x)
  if (x[1]> 0.999 | x[2] >0.999 |x[3] >0.999 |x[4] >0.999 |x[5] >0.999) return(x)
  else Recall(x)
  } 
  # Save output into a matrix 
  out<-capture.output(ono(x))
  matrixout<-t(sapply(strsplit(gsub(" +"," ",out)," "),function(l)as.numeric(l[2:6])))
  #Add initial generation
  matrixout2<-rbind(x,matrixout)
  l<-dim(matrixout2)[1]
  g<-rep("G",l)
  num<-(0:(l-1))
  gen<-paste(g,num, sep="")
  colnames(matrixout2)<-c("PA","PB","F1","F2","PBA")
  rownames(matrixout2)<-gen
  matrixout2
  }
