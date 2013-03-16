bayescanformat<-function(matriz,output)
{
raw<-rbind(matriz$PA,matriz$PB,matriz$F1)
   ind<-c(rownames(matriz$PA),rownames(matriz$PB),rownames(matriz$F1))
   pop<-c(rep("PA",nrow(matriz$PA)),rep("PB",nrow(matriz$PB)),rep("F1",nrow(matriz$F1)))
   col<-c("ind","pop",colnames(raw))
   data<-as.data.frame(cbind(ind,pop,raw))
   colnames(data)<-col

outfile=output

nb_loci=ncol(data)-2

if (is.integer(data[,2]))
  pops_names=1:max(data[,2])
else
  pops_names=levels(data[,2])
  
nb_pops=length(pops_names)

cat("[loci]=",nb_loci,"\n\n",file=outfile)
cat("[populations]=",nb_pops,"\n\n",file=outfile,append=T)

for (pop in 1:nb_pops)
{
  cur_pop=data[data[,2]==pops_names[pop],]
  nb_bands=rep(0,nb_loci)
  nb_individuals=rep(0,nb_loci)
  cat("[pop]=",pop,"\n",file=outfile,append=T)
  for (i in 1:nb_loci)
  {
    nb_bands[i]=sum(cur_pop[,i+2]==1)
    nb_individuals[i]=sum(cur_pop[,i+2]==0)+sum(cur_pop[,i+2]==1)
    cat(i,nb_individuals[i],nb_bands[i],"\n",file=outfile,append=T)
  }
	cat("\n",file=outfile,append=T)
}
} 
