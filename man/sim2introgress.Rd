\encoding{latin1}
\name{sim2introgress}
\alias{sim2introgress}
\title{Converting hybridsim object to introgress}
\description{
The function sim2introgress converts a hybridsim object into an \code{introgress} input file. It is a wrapper to the function \code{\link{prepare.data}} of the package \pkg{introgress}
}
\usage{sim2introgress(x)}
\arguments{
  \item{x}{a \code{\link{hybridsim}} object}
}
\value{a list returned by the function \code{\link{prepare.data}} of the package \pkg{introgress}
}
\references{
Gompert, Z. & C.A. Buerkle. 2010. introgress: a software package for mapping components of isolation in hybrids. \emph{Molecular Ecology Resources} \bold{10}: 378-384.
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{prepare.data}}
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
## simulate hybrids
hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", hybrid="all")

## convert to introgress input file
hybrids2<-sim2introgress(hybrids)
}
\keyword{hybridization}
\keyword{simulation}
