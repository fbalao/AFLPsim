\encoding{latin1}
\name{demosimhybrid}
\alias{demosimhybrid}

\title{Demographic model of introgressive hybridization }
\description{
This model simulates the proportions of parentals,
F1, F2, Fx and backcross (on both sides) individuals for each generation and takes into account the initial frequencies of parentals, the assortative mating among taxa as well as fitness differences.
}
\usage{
demosimhybrid(x,M,F)
}
\arguments{

  \item{x}{A vector indicating the initial abundances in the population.The vector should sum 1. The order of abundances is: ParentalA, ParentalB, F1, BxA, BxB and Fx}
  \item{M}{Matrix assortative mating.The size is 6x6 following the same order tan vector x. By default random mating (all = 1)
}
  \item{F}{A vector indicating the diferent fecundities of the parentals and hybrids. The vector size is 6 following the same order tan vector x. By default equal fecundities (all = 1)
}
}
\details{This function simulate the model of introgresive hibridization of Epifanio and Philipp (2000)
}
\value{ a object \code{demosimhybrid}. An matrix of abundances in each generation
}
\references{
Epifanio, J. & D. Philipp. 2000. Simulating the extinction of parental lineages from introgressive hybridization: the effects of fitness, initial proportions of parental taxa, and mate choice. \emph{Reviews in Fish Biology and Fisheries} \bold{10}: 339-354. 
}
\author{
Francisco Balao \email{fbalao@us.es}; Marcial Escudero; J.L. García-Castaño
}
\seealso{
\code{\link{hybridsim}}

\code{\link{plot.demosimhybrid}}
}
\examples{

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
}
\keyword{hybridization}
\keyword{simulation}
