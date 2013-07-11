\name{demosim.hybrid}
\alias{demosim.hybrid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Model of introgressive hybridization  from John Epifanio and David Philipp 2001 }
\description{
This model simulates the proportions of parentals,
F1, F2, Fx and backcross (on both sides) individuals for each generation and takes into account the initial frequencies of parentals, the assortative mating among taxa as well as fitness differences.
}
\usage{
demosim.hybrid(x,M,F)
## S3 method for class 'demosim'
plot(x, colors, ...)}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
A vector indicating the initial abundances in the population.The vector should sum 1. The order of abundances is: ParentalA, ParentalB, F1, BxA, BxB and Fx
}
  \item{M}{
Matrix assortative mating.The size is 6x6 following the same order tan vector x. By default random mating (all = 1)
}
  \item{F}{
A vector indicating the diferent fecundities of the parentals and hybrids. The vector size is 6 following the same order tan vector x. By default equal fecundities (all = 1)
}
 \item{colors}{
  a color vector to be used to represent hibrid classes.
}
}
\details{
This function simulate the model of introgresive hibridization of Epifanio and Philipp (2001)
}
\value{
Object 'demosim'. An matrix of abundances in each generation
}
\references{
https://github.com/fbalao/AFLPsim
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{plot.demosim}}
}

\examples{


#Example 1. Simulation under parental proportions, similar fecundities and random mating 
inivalues<-c(0.5,0.5,0,0,0,0)
epi0.5<-demosim.hybrid(inivalues)
epi0.5

#Example 2. Simulation under higher frecuency of parental B, and higher fecundy of parental A and random mating
inivalues2<-c(0.25,0.75,0,0,0,0)
fecundities<-c(1,0.5,0.5,0.5,0.5,0.5)
epi0.75<-demosim.hybrid(x=inivalues, F=fecundities)
epi0.75
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
