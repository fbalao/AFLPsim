\name{sim2arlequin}
\alias{sim2arlequin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a Arlequin input file}
\description{
The function sim2arlequin converts a hybridsim object into a Arlequin input file. 

}
\usage{
sim2arlequin(x,filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object
}
  \item{filename}{
a character string indicating the name of the output file}
}

\value{
Arlequin input file
}
\references{
Arlequin
}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2arlequin(F1hybrids,filename="F1hybrids_Arlequin.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
