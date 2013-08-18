\encoding{latin1}
\name{sim2popgene}
\alias{sim2popgene}
\title{Converting hybridsim object to a PopGene input file}
\description{
The function \code{sim2popgene} converts a hybridsim object into a PopGene input file. 
}
\usage{
sim2popgene(x,filename)
}
\arguments{
  \item{x}{a \code{\link{hybridsim}} object}
  \item{filename}{a character string indicating the name of the output file}
}
\value{
a PopGene input file
}
\references{
Yeh, F.C., R.C. Yang, T.B.J. Boyle, Z.H. Ye & J.X. Mao (1997) Popgene, the User-Friendly Sharewarefor Population Genetic Analysis. Molecular Biology and Biotechnology Centre, University of Alberta, Canada (program available from: \url{http://www.ualberta.ca/~fyeh/}).
}
\author{F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2structure}}
}
\examples{
## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to genepop input file
sim2popgene(F1hybrids,filename="F1hybrids_Popgene.txt")
}

\keyword{hybridization}
\keyword{simulation}
