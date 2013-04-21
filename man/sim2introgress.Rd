\name{sim2introgress}
\alias{sim2introgress}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a introgress input file}
\description{
The function sim2introgress converts a hybridsim object into a introgress input file. 

}
\usage{
sim2introgress <- function (x)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object
}
}
\details{

}
\value{
introgress input file
}
\references{
introgress
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{prepare.data}}
\code{\link{sim2arlequin}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
\code{\link{sim2newhybrids}}
}
\examples{
hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", hybrid="all")

hybrids2<-sim2introgress(hybrids)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
