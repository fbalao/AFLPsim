\encoding{latin1}
\name{plot.hybridsim}
\alias{plot.hybridsim}
\title{Plotting hybridsim objects}
\description{
A \code{hybridsim} object can be plotted using the function \code{plot.hybridsim}, which is also used as the dedicated plot method. This function represents expected hybrid markers frequencies on a neutral sheet.}
\usage{
\method{plot}{hybridsim}(x,hybrid = c("F1", "BxA", "BxB"), col = "lightgreen",
 shade = 0.8, markers = x$SelMarkers, ...)
}
\arguments{
 \item{x}{A \code{hybridsim} object.}
 \item{hybrid}{The hybrid classes to simulate:  \code{"F1"},  \code{"BxA"} or  \code{"BxB"}.}
 \item{col}{A specification for the default plotting color.}
 \item{shade}{A specification for the default alpha value.}
 \item{markers}{a numeric vector with markers to plot. By default markers under selection by \code{\link{hybridsim}} function.}
 \item{...}{Arguments to be passed to methods, such as graphical parameters (see \code{par}).}
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{hybridsim}}
\code{\link{hybridize}}
}
\examples{
## simulate parentals and F1 hybrids
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=1, Nsel=25, hybrid="F1")

plot.hybridsim(hybrids, hybrid="F1")
}
\keyword{hybridization}
\keyword{simulation}
