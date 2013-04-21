\name{sim2newhybrids}
\alias{sim2newhybrids}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a aflpsim object to a NewHybrids input file}
\description{
The function sim2newhybrids converts a AFLPsim object into a NewHybrids input file. 

}
\usage{
sim2newhybrids <- function (x,filename)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a aflpsim object
}
  \item{filename}{
a character string indicating the name of the output file}
}
\details{

}
\value{
NewHybrids input file
}
\references{
Newhybrids
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2XXXX}}
}
\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2newhybrids(F1hybrids,filename="F1hybrids.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
