\encoding{latin1}
\name{sim2newhybrids}
\alias{sim2newhybrids}
\title{Converting hybridsim object to a NewHybrids input file}
\description{
The function \code{sim2newhybrids} converts a AFLPsim object into a NewHybrids input file. }
\usage{sim2newhybrids(x,filename)}

\arguments{
  \item{x}{a \code{\link{hybridsim}} object}
  \item{filename}{a character string indicating the name of the output file}
}

\value{a NewHybrids input file}
\references{
Anderson, E.C. 2008. Bayesian inference of species hybrids using multilocus dominant genetic markers. \emph{Philosophical transactions of the Royal Society of London. Series B, Biological Sciences} \bold{363}: 2841-2850. 

Anderson, E.C., & E.A. Thompson. 2002. A model-based method for identifying species hybrids using multilocus genetic data. \emph{Genetics} \bold{160}: 1217-1229.
}

\author{F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}

\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
## simulate hybrids
hybrids<-hybridsim(Nmarker=100,Na=30,Nb=30,Nf1=30, type="neutral", hybrid="all")

## convert to NewHybrids input file
sim2newhybrids(hybrids,filename="newhybridsinput.txt")
}
\keyword{hybridization}
\keyword{simulation}
