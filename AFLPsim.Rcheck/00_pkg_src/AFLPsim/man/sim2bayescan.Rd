\name{sim2bayescan}
\alias{sim2bayescan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a Bayescan input file}
\description{
The function sim2bayescan converts a hybridsim object into a Bayescan (Foll & Gaggiotti 2008) input file. 

}
\usage{
sim2bayescan(x,filename)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object. Only with F1 hybrids
}
  \item{filename}{
a character string indicating the name of the output file}
}

\value{
Bayescan input file
}
\references{
Foll, M., and O. Gaggiotti. 2008. A genome-scan method to identify selected loci appropriate for both dominant and codominant markers: a Bayesian perspective. \emph{Genetics} \bold{180}: 977–93. 
}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", S=5, Nsel=25, hybrid="F1")

sim2bayescan(F1hybrids,filename="F1hybrids_Bayescan.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
