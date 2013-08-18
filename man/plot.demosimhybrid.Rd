\encoding{latin1}
\name{plot.demosimhybrid}
\alias{plot.demosimhybrid}
\title{Plotting \code{\link{demosimhybrid}} objects}
\description{A \code{\link{demosimhybrid}} object can be plotted using the function \code{plot.demosimhybrid}, which is also used as the dedicated plot method. This function plots the frequency of parentals and hybrid classes on each generation.}
\usage{\method{plot}{demosimhybrid}(x, col = c(2, 3, 4, "orange", "orchid", 7), ...)
}
\arguments{
 \item{x}{a \code{\link{demosimhybrid}} object.}
 \item{col}{the colors for the hybrid classes.}
 \item{...}{Arguments to be passed to methods, such as graphical parameters (see \code{par}).}}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{demosimhybrid}}
}
\examples{
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
}
\keyword{hybridization}
\keyword{simulation}
