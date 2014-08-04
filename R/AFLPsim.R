AFLPsim <-
function(Nmarker,Na,Nb,Nf1,apa,apb,Nsel,S){


#Crea matriz de individuos con todo 1
pa<-matrix(1,Na,Nmarker)
#Crea la matriz con alelos siguiendo la probabilida de la beta
p1<-rbeta(Nmarker,apa,apa)
for (i in 1:Nmarker)
pa[,i]<-rbinom(Na,1,p1[i])

pb<-matrix(1,Nb,Nmarker)
p2<-rbeta(Nmarker,apb,apb)
for (i in 1:Nmarker)
pb[,i]<-rbinom(Nb,1,p2[i])



#Creamos los individuos F1 siguiendo un modelo neutral pero queremos seleccionar algunos alelos. Para ello fabricamos un numero grande de progenie y luego recogemos los individuos que tengan los fragmentos outlier donde outlier es un vector de alelos (M1,M2,...)




#El modelo de introgresion neutra
neutralmodel<-function(x,y){
a<-1-sqrt(1-x)
b<-1-sqrt(1-y)
a+b-a*b}

#Se calculas las frecuencias de lso parentales

fa<-apply(pa,2,mean)
fb<-apply(pb,2,mean)


fprogeny<-neutralmodel(fa,fb)

progeny<-matrix(1,1000,Nmarker)

for (i in 1:Nmarker)
progeny[,i]<-rbinom(1000,1,fprogeny[i])

# Aqui es donde metemos seleccion. Para ello hay que definir sel 
# que es un vector de longitud Nsel que equivale 
# al numero de fragmentos a seleccionarse positivamente
## Nsel<=Nmarker
sel<-sample(1:Nmarker,Nsel)
sel<-sort(sel)
#Ya tenemos los fragmentos a seleccionar. Ahora vamos a seleccionar los fragmentos sel con una coeficiente de selecci??n S [1-10]

fS<-fprogeny[sel]*S
fS[fS>1]<-1
nsel<-length(sel)
selections<-matrix(1,1000,nsel)
for (i in 1: nsel)
selections[,i]<-rbinom(1000,1,fS[i])
progeny[,sel]<-selections

#Submuestreamos al azar un Numero Nf1 de hibridos con seleccion sobre esos marker
f1sel<-progeny[sample(nrow(progeny), Nf1), ]

#La ponemos bonita nombres de alelos e individuos
markers<-paste("M",seq(1,Nmarker,1),sep="")
PA<-paste("PA",seq(1,Na,1),sep="")
PB<-paste("PB",seq(1,Nb,1),sep="")
F1<-paste("F1",seq(1,nrow(f1sel),1),sep="_")

colnames(pa)<-markers
rownames(pa)<-PA
colnames(pb)<-markers
rownames(pb)<-PB
colnames(f1sel)<-markers
rownames(f1sel)<-F1

simulation<-list(pa,pb,f1sel,sel)
names(simulation)<-c("PA","PB","F1","SelMarkers")
simulation
}
