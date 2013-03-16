plot.sim<- function(mat,tipo=c("f1","bx"),colour="blue",shade=0.2){
 pa<-apply(mat$PA,2,mean)
 pb<-apply(mat$PB,2,mean)
 pf1<-apply(mat$F1,2,mean)
 Na<-dim(mat$PA)[1]
 Nb<-dim(mat$PB)[1]
 Nf1<-dim(mat$F1)[1]
 i<-mat$SelMarkers 
 x<- seq(0, 1, 0.05)
 y<- seq(0, 1, 0.05) 

  model<-function(x,y){
  a<-1-sqrt(1-x)
  b<-1-sqrt(1-y)
  a+b-a*b}

  tipo<- match.arg(tipo)
   if (tipo == "f1")
     {teoricof1<-model(pa,pb)
     z<-outer(x,y,model)
resf1<-persp(x,y,z,thet=-30, phi=25, ticktype="detailed",col=colour,shade=shade,xlab="Species A", ylab="Species B", zlab="F1")
points(trans3d(pa[i], pb[i], pf1[i], pmat = resf1),pch=21,col=1, bg=2,cex=2)
to<-trans3d(pa[i], pb[i], teoricof1[i], pmat = resf1)
from<-trans3d(pa[i], pb[i], pf1[i], pmat = resf1)
segments(from$x, from$y, to$x, to$y, col=2, lwd=2.5)}
  
 if (tipo == "bx")
  {
  if (is.null(mat$Bx)==TRUE)
stop("You need backcross individuals")
  else 
  pbx<-apply(mat$Bx,2,mean)
   modelbcb<-function(x,y){
   a<-1-sqrt(1-x)
   b<-1-sqrt(1-y)
   0.5*( (3*b) + a -(b^2) -(a*b))}
  teoricobx<-modelbcb(pa,pb)
  zbx<-outer(x,y,modelbcb)
  resbx<-persp(x,y,zbx,thet=-30, phi=25, ticktype="detailed",col=colour,shade=shade,xlab="Species A", ylab="Species B", zlab="BxA")
 points(trans3d(pa[i], pb[i], pbx[i], pmat = resbx),pch=21,col=1, bg=2,cex=2)
 to<-trans3d(pa[i], pb[i], teoricobx[i], pmat = resbx)
 from<-trans3d(pa[i], pb[i], pbx[i], pmat = resbx)
 segments(from$x, from$y, to$x, to$y, col=2, lwd=2.5)}
   }
