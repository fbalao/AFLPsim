plot.sim <-
function(mat,type=c("F1","BxA","BxB"),colour="lightgreen",shade=0.8, markers= mat$SelMarkers ){

 pa<-apply(mat$PA,2,mean)
 pb<-apply(mat$PB,2,mean)
 pf1<-apply(mat$F1,2,mean)
 Na<-dim(mat$PA)[1]
 Nb<-dim(mat$PB)[1]
 Nf1<-dim(mat$F1)[1]
 Nbxa<-dim(mat$BxA)[1]
 Nbxb<-dim(mat$BxB)[1]
 i<-markers 
 x<- seq(0, 1, 0.05)
 y<- seq(0, 1, 0.05) 

  model<-function(x,y){
  a<-1-sqrt(1-x)
  b<-1-sqrt(1-y)
  a+b-a*b}

  type<- match.arg(type)
   if (type == "F1")
     {teoricof1<-model(pa,pb)
     z<-outer(x,y,model)
resf1<-persp(x,y,z,thet=-30, phi=25, ticktype="detailed",col=colour,shade=shade,xlab="Species A", ylab="Species B", zlab="F1")
points(trans3d(pa[i], pb[i], pf1[i], pmat = resf1),pch=21,col=1, bg=2,cex=2)
to<-trans3d(pa[i], pb[i], teoricof1[i], pmat = resf1)
from<-trans3d(pa[i], pb[i], pf1[i], pmat = resf1)
segments(from$x, from$y, to$x, to$y, col=2, lwd=2.5)}
  
 if (type == "BxB")
  {
  if (is.null(mat$BxB)==TRUE)
stop("You need backcross individuals")
  else 
  pbxb<-apply(mat$BxB,2,mean)
   modelbcb<-function(x,y){
   a<-1-sqrt(1-x)
   b<-1-sqrt(1-y)
   0.5*( (3*b) + a -(b^2) -(a*b))}
  teoricobx<-modelbcb(pa,pb)
  zbxb<-outer(x,y,modelbcb)
  resbxb<-persp(x,y,zbxb,thet=-30, phi=25, ticktype="detailed",col=colour,shade=shade,xlab="Species A", ylab="Species B", zlab="BxB")
 points(trans3d(pa[i], pb[i], pbxb[i], pmat = resbxb),pch=21,col=1, bg=2,cex=2)
 to<-trans3d(pa[i], pb[i], teoricobx[i], pmat = resbxb)
 from<-trans3d(pa[i], pb[i], pbxb[i], pmat = resbxb)
 segments(from$x, from$y, to$x, to$y, col=2, lwd=2.5)}
   
 if (type == "BxA")
  {
  if (is.null(mat$BxA)==TRUE)
stop("You need backcross individuals")
  else 
  pbxa<-apply(mat$BxA,2,mean)
   modelbca<-function(x,y){
   a<-1-sqrt(1-x)
   b<-1-sqrt(1-y)
   0.5*( (3*a) + b -(a^2) -(a*b))}
  teoricobxa<-modelbca(pa,pb)
  zbxa<-outer(x,y,modelbca)
  resbxa<-persp(x,y,zbxa,thet=-30, phi=25, ticktype="detailed",col=colour,shade=shade,xlab="Species A", ylab="Species B", zlab="BxA")
 points(trans3d(pa[i], pb[i], pbxa[i], pmat = resbxa),pch=21,col=1, bg=2,cex=2)
 to<-trans3d(pa[i], pb[i], teoricobxa[i], pmat = resbxa)
 from<-trans3d(pa[i], pb[i], pbxa[i], pmat = resbxa)
 segments(from$x, from$y, to$x, to$y, col=2, lwd=2.5)}
}
