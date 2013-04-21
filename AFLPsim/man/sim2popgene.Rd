\name{sim2popgene}
\alias{sim2popgen}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a PopGene input file}
\description{
The function sim2newhybrids converts a hybridsim object into a PopGene input file. 

}
\usage{
sim2popgene <- function (x,filename)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object
}
  \item{filename}{
a character string indicating the name of the output file}
}
\details{

}
\value{
PopGene input file
}
\references{
Popgene
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2newhybrids}}
\code{\link{sim2arlequin}}
\code{\link{sim2structure}}
}
\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2popgene(F1hybrids,filename="F1hybrids_Popgene.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
