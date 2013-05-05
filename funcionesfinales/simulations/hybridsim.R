#28/7/2012
#Creando 2 poblaciones/individuos independientes con distribucion
# de probabilidad de cada alelo siguiendo una beta(a,a)

hybridsim<-function(Nmarker,Na,Nb,Nf1,type="selection",Nsel=Nmarker*0.1,S=0,apa=0.5,apb=0.5){
  if (Na==0 |Nb==0)
    stop("at least 1 individuals in each parental population")
  if (Nf1==0)
    stop("at least 2 F1 hybrids")
  
  if (Na==0 |Nb==0)
    stop("at least 1 individuals in each parental population")
  
  if (type=="neutral"){
    cat("########Neutral hybridization########")
    Nsel=Nmarker
    S=0
  }
  #Crea matriz de individuos con todo 1
  pa<-matrix( 1,1000,Nmarker)
  #Crea la matriz con alelos siguiendo la probabilida de la beta
  p1<-rbeta(Nmarker,apa,apa)
  fa<-p1*(2-p1)
  for (i in 1:Nmarker)
    pa[,i]<-rbinom(1000,1,fa[i])
  pasel<-pa[sample(nrow(pa), Na), ]
  
  
  
  
  pb<-matrix(1,1000,Nmarker)
  p2<-rbeta(Nmarker,apb,apb)
  fb<-p2*(2-p2)
  for (i in 1:Nmarker)
    pb[,i]<-rbinom(1000,1,fb[i])
  
  pbsel<-pb[sample(nrow(pb), Nb), ]
  
  #Creamos los individuos F1 siguiendo un modelo neutral pero queremos seleccionar algunos alelos. Para ello fabricamos un numero grande de progenie y luego recogemos los individuos que tengan los fragmentos outlier donde outlier es un vector de alelos (M1,M2,...)
  
  
  
  
  #El modelo de introgresion neutra
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
  selection<-function(z){
    ((S+1)*z)/(((S+1)*z)+ y2)}
  
  fS<-selection(ff1[sel])
  
  selected<-matrix(1,1000,Nsel)
  for (i in 1: Nsel)
    selected[,i]<-rbinom(1000,1,fS[i])
  progeny[,sel]<-selected
  progeny[progeny=="NaN"]<-0
  
  #Submuestreamos al azar un Numero Nf1 de hibridos con seleccion sobre esos marker
  f1sel<-progeny[sample(nrow(progeny), Nf1), ]
  
  #La ponemos bonita nombres de alelos e individuos
  markers<-paste("M",seq(1,Nmarker,1),sep="")
  PA<-paste("PA",seq(1,nrow(pasel),1),sep="")
  PB<-paste("PB",seq(1,nrow(pbsel),1),sep="")
  F1<-paste("F1",seq(1,nrow(f1sel),1),sep="_")
  
  colnames(pasel)<-markers
  rownames(pasel)<-PA
  colnames(pbsel)<-markers
  rownames(pbsel)<-PB
  colnames(f1sel)<-markers
  rownames(f1sel)<-F1
  
  simulation<-list(pasel,pbsel,f1sel,sel)
  names(simulation)<-c("PA","PB","F1","SelMarkers")
  simulation
}
