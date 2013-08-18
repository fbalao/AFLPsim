\encoding{latin1}
\name{sim2bayescan}
\alias{sim2bayescan}
\title{Converting hybridsim object to a Bayescan input file}
\description{The function sim2bayescan converts a hybridsim object into a \code{Bayescan} \cite{(Foll & Gaggiotti 2008)} input file. }
\usage{sim2bayescan(x,filename)}
\arguments{
  \item{x}{a \code{\link{hybridsim}} object. Only with F1 hybrids}
  \item{filename}{a character string indicating the name of the output file}}

\value{\code{Bayescan} input file}
\references{
Foll, M. & O. Gaggiotti. 2008. A genome-scan method to identify selected loci appropriate for both dominant and codominant markers: a Bayesian perspective. \emph{Genetics} \bold{180}: 977-993. 
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="selection", S=5, Nsel=25, hybrid="F1")

## convert to Bayescan input file
sim2bayescan(F1hybrids,filename="F1hybrids_Bayescan.txt")
}
\keyword{hybridization}
\keyword{simulation}
