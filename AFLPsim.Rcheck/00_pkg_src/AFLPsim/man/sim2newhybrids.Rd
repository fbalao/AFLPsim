\name{sim2newhybrids}
\alias{sim2newhybrids}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a aflpsim object to a NewHybrids input file}
\description{
The function sim2newhybrids converts a AFLPsim object into a NewHybrids input file. 

}
\usage{
sim2newhybrids(x,filename)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a aflpsim object
}
  \item{filename}{
a character string indicating the name of the output file}
}

\value{
NewHybrids input file
}
\references{
Anderson, E.C. 2008. Bayesian inference of species hybrids using multilocus dominant genetic markers. \emph{Philosophical transactions of the Royal Society of London. Series B, Biological Sciences} \bold{363}: 2841–50. 

Anderson, E.C., and E.A. Thompson. 2002. A model-based method for identifying species hybrids using multilocus genetic data. \emph{Genetics} \bold{160}: 1217–1229.
}

\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
hybrids<-hybridsim(Nmarker=500,Na=100,Nb=100,Nf1=30,Nbxa=30,Nbxb=30, Nf2=30, type="neutral", hybrid="all")

sim2newhybrids(hybrids,filename="F1newhybrids.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
