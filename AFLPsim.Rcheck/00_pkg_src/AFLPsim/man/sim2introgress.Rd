\name{sim2introgress}
\alias{sim2introgress}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a introgress input file}
\description{
The function sim2introgress converts a hybridsim object into a introgress  input file. It is a wrapper to the function \code{\link{prepare.data}} of the package \pkg{introgress}

}
\usage{
sim2introgress(x)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object
}
}

\value{
introgress input file
}
\references{
Gompert, Z., and C.A. Buerkle. 2010. introgress: a software package for mapping components of isolation in hybrids. \emph{Molecular Ecology Resources} \bold{10}: 378–384.
}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
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
hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", hybrid="all")

hybrids2<-sim2introgress(hybrids)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
