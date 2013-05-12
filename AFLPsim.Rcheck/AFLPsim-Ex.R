pkgname <- "AFLPsim"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('AFLPsim')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("bayescan")
### * bayescan

flush(stderr()); flush(stdout())

### Name: bayescan
### Title: Identifying candidate loci under natural selection with External
###   Application
### Aliases: bayescan
### Keywords: outlier hybridization genome scan

### ** Examples

hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=4,Nsel=25, hybrid="F1")

outliers<-gscan(hybrids, type="F1", method="balao")



cleanEx()
nameEx("demosimhybrid")
### * demosimhybrid

flush(stderr()); flush(stdout())

### Name: demosimhybrid
### Title: Demographic model of introgressive hybridization
### Aliases: demosimhybrid
### Keywords: hybridization simulation

### ** Examples


#Example 1. Simulation under parental proportions, similar fecundities and random mating 
inivalues<-c(0.5,0.5,0,0,0,0)
epi0.5<-demosimhybrid(inivalues)
epi0.5
plot(epi0.5)

#Example 2. Simulation under higher frecuency of parental B, and higher fecundy of parental A and random mating
inivalues2<-c(0.25,0.75,0,0,0,0)
fecundities<-c(1,0.5,0.5,0.5,0.5,0.5)
epi0.75<-demosimhybrid(x=inivalues, F=fecundities)
epi0.75
plot(epi0.75)



cleanEx()
nameEx("gscan")
### * gscan

flush(stderr()); flush(stdout())

### Name: gscan
### Title: Genome scan for hybrids
### Aliases: gscan
### Keywords: outlier hybridization genome scan

### ** Examples

hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=5,Nsel=25, hybrid="F1")

outliers<-gscan(hybrids, type="F1", method="balao")



cleanEx()
nameEx("hybridindex")
### * hybridindex

flush(stderr()); flush(stdout())

### Name: hybridindex
### Title: Estimate Hybrid Index por AFLPsim objects
### Aliases: hybridindex
### Keywords: hybridization

### ** Examples

hybrids<-hybridsim(Nmarker=300, Na=100, Nb=100, Nf1=100, type="neutral", hybrid="F1")

hest<-hybridindex(hybrids)



cleanEx()
nameEx("hybridize")
### * hybridize

flush(stderr()); flush(stdout())

### Name: hybridize
### Title: AFLP Simulator wih selection from parental data
### Aliases: hybridize
### Keywords: hybridization simulation

### ** Examples

#AFLP profile Species A
SpeciesA<-read.table(system.file("files/SpeciesA.txt",package="AFLPsim"),header=TRUE, row.names=1)


#AFLP profile Species B
SpeciesB<-read.table(system.file("files/SpeciesB.txt",package="AFLPsim"),header=TRUE, row.names=1)

F1hybrids<-hybridize(pa=SpeciesA,pb=SpeciesB, Nf1=30, type="neutral", hybrid="F1")



cleanEx()
nameEx("hybridsim")
### * hybridsim

flush(stderr()); flush(stdout())

### Name: hybridsim
### Title: AFLP Simulator wih selection
### Aliases: hybridsim
### Keywords: hybridization simulation

### ** Examples

hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1")



cleanEx()
nameEx("plot.demosimhybrid")
### * plot.demosimhybrid

flush(stderr()); flush(stdout())

### Name: plot.demosimhybrid
### Title: Plotting demosimhybrid objects
### Aliases: plot.demosimhybrid
### Keywords: hybridization simulation

### ** Examples


#Example 1. Simulation under parental proportions, similar fecundities and random mating 
inivalues<-c(0.5,0.5,0,0,0,0)
epi0.5<-demosimhybrid(inivalues)
epi0.5
plot(epi0.5)

#Example 2. Simulation under higher frecuency of parental B, and higher fecundy of parental A and random mating
inivalues2<-c(0.25,0.75,0,0,0,0)
fecundities<-c(1,0.5,0.5,0.5,0.5,0.5)
epi0.75<-demosimhybrid(x=inivalues, F=fecundities)
epi0.75
plot(epi0.75)



cleanEx()
nameEx("plot.hybridsim")
### * plot.hybridsim

flush(stderr()); flush(stdout())

### Name: plot.hybridsim
### Title: Plotting hybridsim objects
### Aliases: plot.hybridsim
### Keywords: hybridization simulation

### ** Examples

hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1")



cleanEx()
nameEx("sim2arlequin")
### * sim2arlequin

flush(stderr()); flush(stdout())

### Name: sim2arlequin
### Title: Convert a hybridsim object to a Arlequin input file
### Aliases: sim2arlequin
### Keywords: hybridization simulation

### ** Examples

F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2arlequin(F1hybrids,filename="F1hybrids_Arlequin.txt")



cleanEx()
nameEx("sim2bayescan")
### * sim2bayescan

flush(stderr()); flush(stdout())

### Name: sim2bayescan
### Title: Convert a hybridsim object to a Bayescan input file
### Aliases: sim2bayescan
### Keywords: hybridization simulation

### ** Examples

F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", S=5, Nsel=25, hybrid="F1")

sim2bayescan(F1hybrids,filename="F1hybrids_Bayescan.txt")



cleanEx()
nameEx("sim2introgress")
### * sim2introgress

flush(stderr()); flush(stdout())

### Name: sim2introgress
### Title: Convert a hybridsim object to a introgress input file
### Aliases: sim2introgress
### Keywords: hybridization simulation

### ** Examples

hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", hybrid="all")

hybrids2<-sim2introgress(hybrids)



cleanEx()
nameEx("sim2newhybrids")
### * sim2newhybrids

flush(stderr()); flush(stdout())

### Name: sim2newhybrids
### Title: Convert a aflpsim object to a NewHybrids input file
### Aliases: sim2newhybrids
### Keywords: hybridization simulation

### ** Examples

hybrids<-hybridsim(Nmarker=500,Na=100,Nb=100,Nf1=30,Nbxa=30,Nbxb=30, Nf2=30, type="neutral", hybrid="all")

sim2newhybrids(hybrids,filename="F1newhybrids.txt")



cleanEx()
nameEx("sim2popgene")
### * sim2popgene

flush(stderr()); flush(stdout())

### Name: sim2popgene
### Title: Convert a hybridsim object to a PopGene input file
### Aliases: sim2popgene
### Keywords: hybridization simulation

### ** Examples

F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2popgene(F1hybrids,filename="F1hybrids_Popgene.txt")



cleanEx()
nameEx("sim2structure")
### * sim2structure

flush(stderr()); flush(stdout())

### Name: sim2structure
### Title: Convert a hybridsim object to a Structure input file
### Aliases: sim2structure
### Keywords: hybridization simulation

### ** Examples

F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2structure(F1hybrids,filename="F1hybrids_Structure.txt")



### * <FOOTER>
###
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
