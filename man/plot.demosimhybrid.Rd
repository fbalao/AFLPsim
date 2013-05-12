\name{plot.demosimhybrid}
\alias{plot.demosimhybrid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plotting demosimhybrid objects}
\description{
\code{\link{demosimhybrid}} object can be plotted using the function \code{demosim.hybrid.plot}, which is also used as the dedicated plot method. These functions plot the frequency of parentals and hybrid classes on each generation.
}
\usage{
plot.demosimhybrid(x, col = c(2, 3, 4, "orange", "orchid", 7))
\method{plot}{demosimhybrid}(x, col = c(2, 3, 4, "orange", "orchid", 7))
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
A \code{\link{demosimhybrid}} object 
}
 \item{col}{
  a color vector to be used to represent hibrid classes.
}
}
\details{
This function simulate the model of introgresive hibridization of Epifanio and Philipp (2000)
}
\value{
Object 'demosimhybrid'. An matrix of abundances in each generation
}
\references{
Epifanio, J. and D. Philipp. 2000. Simulating the extinction of parental lineages from introgressive hybridization: the effects of fitness, initial proportions of parental taxa, and mate choice. \emph{Reviews in Fish Biology and Fisheries} \bold{10}: 339–354. 
}
\author{
Francisco Balao \email{fbalao@us.es};
Marcial Escudero
}
\seealso{
\code{\link{demosimhybrid}}
}
\examples{

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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
