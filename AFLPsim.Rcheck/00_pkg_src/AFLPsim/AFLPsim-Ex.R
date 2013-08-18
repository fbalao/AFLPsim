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
### Title: Identifying candidate loci under natural selection with external
###   application
### Aliases: bayescan
### Keywords: outlier hybridization genome scan

### ** Examples

## Not run
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1", S=100)
outbayes<-bayescan(hybrids, filename="bayescanresults", nbp=10, pilot=50, burn=100)
outbayes



cleanEx()
nameEx("demosimhybrid")
### * demosimhybrid

flush(stderr()); flush(stdout())

### Name: demosimhybrid
### Title: Demographic model of introgressive hybridization
### Aliases: demosimhybrid
### Keywords: hybridization simulation

### ** Examples


## Example 1. Simulation under parental proportions,
## similar fecundities and random mating 
inivalues<-c(0.5,0.5,0,0,0,0)
epi0.5<-demosimhybrid(inivalues)
epi0.5


## Example 2. Simulation under higher frecuency of parental B,
## and higher fecundy of parental A and random mating
inivalues2<-c(0.25,0.75,0,0,0,0)
fecundities<-c(1,0.5,0.5,0.5,0.5,0.5)
epi0.75<-demosimhybrid(x=inivalues, F=fecundities)
epi0.75



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

outliers<-gscan(hybrids, type="F1", method="bal&gar-ca")



cleanEx()
nameEx("hybridindex")
### * hybridindex

flush(stderr()); flush(stdout())

### Name: hybridindex
### Title: Estimate hybrid index por 'hybridsim' objects
### Aliases: hybridindex
### Keywords: hybridization

### ** Examples

## simulate parentals and F1 hybrids
hybrids<-hybridsim(Nmarker=100, Na=100, Nb=100, Nf1=10, type="neutral", hybrid="F1")

## estimate hybrid index
hest<-hybridindex(hybrids)



cleanEx()
nameEx("hybridize")
### * hybridize

flush(stderr()); flush(stdout())

### Name: hybridize
### Title: AFLP simulator with selection from parental data
### Aliases: hybridize
### Keywords: hybridization simulation

### ** Examples

## AFLP profile Species A
SpeciesA<-read.table(system.file("/files/SpeciesA.txt",package="AFLPsim"),header=TRUE, row.names=1)


## AFLP profile Species B
SpeciesB<-read.table(system.file("/files/SpeciesB.txt",package="AFLPsim"),header=TRUE, row.names=1)

## simulate F1 hybrids
F1hybrids<-hybridize(pa=SpeciesA,pb=SpeciesB, Nf1=30, type="neutral", hybrid="F1")



cleanEx()
nameEx("hybridsim")
### * hybridsim

flush(stderr()); flush(stdout())

### Name: hybridsim
### Title: AFLP simulator with selection
### Aliases: hybridsim
### Keywords: hybridization simulation

### ** Examples

hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1")



cleanEx()
nameEx("plot.demosimhybrid")
### * plot.demosimhybrid

flush(stderr()); flush(stdout())

### Name: plot.demosimhybrid
### Title: Plotting 'demosimhybrid' objects
### Aliases: plot.demosimhybrid
### Keywords: hybridization simulation

### ** Examples

## Example 1. Simulation under parental proportions,
## similar fecundities and random mating 
inivalues<-c(0.5,0.5,0,0,0,0)
epi0.5<-demosimhybrid(inivalues)
epi0.5
plot.demosimhybrid(epi0.5)

## Example 2. Simulation under higher frecuency of Parental B,
## and higher fecundy of Parental A and random mating
inivalues2<-c(0.25,0.75,0,0,0,0)
fecundities<-c(1,0.5,0.5,0.5,0.5,0.5)
epi0.75<-demosimhybrid(x=inivalues, F=fecundities)
epi0.75
plot.demosimhybrid(epi0.75)



cleanEx()
nameEx("plot.hybridsim")
### * plot.hybridsim

flush(stderr()); flush(stdout())

### Name: plot.hybridsim
### Title: Plotting hybridsim objects
### Aliases: plot.hybridsim
### Keywords: hybridization simulation

### ** Examples

## simulate parentals and F1 hybrids
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=1, Nsel=25, hybrid="F1")

plot.hybridsim(hybrids, hybrid="F1")



cleanEx()
nameEx("sim2arlequin")
### * sim2arlequin

flush(stderr()); flush(stdout())

### Name: sim2arlequin
### Title: Converting hybridsim object to a Arlequin input file
### Aliases: sim2arlequin
### Keywords: hybridization simulation

### ** Examples

## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to Arlequin input file
sim2arlequin(F1hybrids,filename="F1hybrids_Arlequin.txt")



cleanEx()
nameEx("sim2bayescan")
### * sim2bayescan

flush(stderr()); flush(stdout())

### Name: sim2bayescan
### Title: Converting hybridsim object to a Bayescan input file
### Aliases: sim2bayescan
### Keywords: hybridization simulation

### ** Examples

## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", S=5, Nsel=25, hybrid="F1")

## convert to Bayescan input file
sim2bayescan(F1hybrids,filename="F1hybrids_Bayescan.txt")



cleanEx()
nameEx("sim2genind")
### * sim2genind

flush(stderr()); flush(stdout())

### Name: sim2genind
### Title: Converting a hybridsim object to a genind object
### Aliases: sim2genind
### Keywords: hybridization simulation

### ** Examples

## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to genind object
F1gen<-sim2genind(F1hybrids)



cleanEx()
nameEx("sim2introgress")
### * sim2introgress

flush(stderr()); flush(stdout())

### Name: sim2introgress
### Title: Converting hybridsim object to introgress
### Aliases: sim2introgress
### Keywords: hybridization simulation

### ** Examples

## simulate hybrids
hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", hybrid="all")

## convert to introgress input file
hybrids2<-sim2introgress(hybrids)



cleanEx()
nameEx("sim2newhybrids")
### * sim2newhybrids

flush(stderr()); flush(stdout())

### Name: sim2newhybrids
### Title: Converting hybridsim object to a NewHybrids input file
### Aliases: sim2newhybrids
### Keywords: hybridization simulation

### ** Examples

## simulate hybrids
hybrids<-hybridsim(Nmarker=500,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="all")

## convert to NewHybrids input file
sim2newhybrids(hybrids,filename="newhybridsinput.txt")



cleanEx()
nameEx("sim2popgene")
### * sim2popgene

flush(stderr()); flush(stdout())

### Name: sim2popgene
### Title: Converting hybridsim object to a PopGene input file
### Aliases: sim2popgene
### Keywords: hybridization simulation

### ** Examples

## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to genepop input file
sim2popgene(F1hybrids,filename="F1hybrids_Popgene.txt")



cleanEx()
nameEx("sim2structure")
### * sim2structure

flush(stderr()); flush(stdout())

### Name: sim2structure
### Title: Convert a hybridsim object to a STRUCTURE input file
### Aliases: sim2structure
### Keywords: hybridization simulation

### ** Examples

## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to STRUCTURE input file
sim2structure(F1hybrids,filename="F1hybrids_Structure.txt")



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
