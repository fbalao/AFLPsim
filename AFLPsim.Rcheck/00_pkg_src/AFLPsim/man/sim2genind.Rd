\encoding{latin1}
\name{sim2genind}
\alias{sim2genind}
\title{Converting a hybridsim object to a genind object}
\description{
The function \code{sim2genind} converts a \code{hybridsim} object into a \code{\link{genind}} object of the package \pkg{adegenet}. It is wrapper of the function  \code{\link{df2genind}}
}
\usage{sim2genind(x)}
\arguments{
\item{x}{a \code{hybridsim} object}}
\value{A \code{\link[adegenet]{genind}} object}
\author{F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link[adegenet]{genind}}
\code{\link[adegenet]{df2genind}}
}

\examples{
## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to genind object
F1gen<-sim2genind(F1hybrids)
}
\keyword{hybridization}
\keyword{simulation}
