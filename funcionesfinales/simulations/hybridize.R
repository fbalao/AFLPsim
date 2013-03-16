#########################################################################
#  pa= matriz de parental a
#  pb= matriz parental b
#  Nf1 = numero de hibridos
#  Nsel= numero de fragmentos seleccionados
#  S= fitness

hybridize<-function(pa,pb,Nf1,type="selection",Nsel=Nmarker*0.1,S=0, namehybrid="F1"){
   Nmarker=ncol(pa) 
   if (Nsel==0){ type="neutral"}
   if (Nf1==0)
    stop("at least 2 F1 hybrids")  
   if (ncol(pa)!=ncol(pb))
    stop("different number of fragments")
   if (type=="neutral"){
    cat("########Neutral hybridization########")
    Nsel=Nmarker
    S=0
  }
 
  

  neutralmodel<-function(x,y){
    x+y-(x*y)}
  
  #Se calculas las frecuencias de lso parentales
  
  fa1000<-apply(pa,2,mean)
  fb1000<-apply(pb,2,mean)
  pa1000<-1-sqrt(1-fa1000)
  pb1000<-1-sqrt(1-fb1000)
  
  ff1<-neutralmodel(pa1000,pb1000)
  
  progeny<-matrix(1,1000,Nmarker)
  
  for (i in 1:Nmarker)
    progeny[,i]<-rbinom(1000,1,ff1[i])
  
  # Aqui es donde metemos seleccion. Para ello hay que definir sel 
  # que es un vector de longitud Nsel que equivale 
  # al numero de fragmentos a seleccionarse positivamente
  ## Nsel<=Nmarker
  sel<-sample(1:Nmarker,Nsel)
  sel<-sort(sel)
  
  #Ya tenemos los fragmentos a seleccionar. Ahora vamos a seleccionar los fragmentos sel con una coeficiente de selecci??n S [1-10]
  y2 <-(1-pa1000)*(1-pb1000)
  y2[y2==0]<-0.00000000000000000000000000000000001
  y2<-y2[sel]
  selection<-function(x){
    ((S+1)*x)/(((S+1)*x)+ y2)}
  
  fS<-selection(ff1[sel])
  
  selected<-matrix(1,1000,Nsel)
  for (i in 1: Nsel)
    selected[,i]<-rbinom(1000,1,fS[i])
  progeny[,sel]<-selected
  progeny[progeny=="NaN"]<-0
  
  #Submuestreamos al azar un Numero Nf1 de hibridos con seleccion sobre esos marker
  f1sel<-progeny[sample(nrow(progeny), Nf1), ]
  
  #La ponemos bonita nombres de alelos e individuos
  namehybrid<-as.character(namehybrid)
  markers<- labels(pa)[[2]]
  F1<-paste(namehybrid,seq(1,nrow(f1sel),1),sep="_")
  colnames(f1sel)<-markers
  rownames(f1sel)<-F1
  
  simulation<-list(pa,pb,f1sel,sel)
  names(simulation)<-c("PA","PB",namehybrid,"SelMarkers")
  simulation
}
