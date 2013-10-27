\encoding{latin1}
\name{sim2structure}
\alias{sim2structure}
\title{Convert a hybridsim object to a STRUCTURE input file}
\description{The function \code{sim2structure} converts a hybridsim object into a Structure 2.3 input file.}
\usage{sim2structure(x,filename)}
\arguments{
  \item{x}{a \code{\link{hybridsim}} object}
  \item{filename}{a character string indicating the name of the output file}}
\value{a Structure input file}
\references{
Falush, D., M. Stephens, J.K. Pritchard. 2007. Inference of population structure using multilocus genotype data: dominant markers and null alleles.\emph{Molecular Ecology Notes} \bold{7}: 574-578. 

Pritchard, J.K., M. Stephens,  P. Donnelly. 2000. Inference of population structure using multilocus genotype data. \emph{Genetics} \bold{155}: 945-959.
}
\author{F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
}
\examples{
## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=30,Na=30,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to STRUCTURE input file
sim2structure(F1hybrids,filename="F1hybrids_Structure.txt")
}
\keyword{hybridization}
\keyword{simulation}
