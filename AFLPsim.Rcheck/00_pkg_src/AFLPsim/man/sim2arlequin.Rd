\encoding{latin1}
\name{sim2arlequin}
\alias{sim2arlequin}
\title{Converting hybridsim object to a Arlequin input file}
\description{
The function sim2arlequin converts a hybridsim  object into a Arlequin input file. 

}
\usage{
sim2arlequin(x,filename)
}
\arguments{

  \item{x}{
a \code{\link{hybridsim}} object
}
  \item{filename}{
a character string indicating the name of the output file}
}

\value{
Arlequin input file
}
\references{
Excoffier L, Laval G, Schneider S (2005) Arlequin ver. 3.0: An integrated software package for population genetics data analysis. \emph{Evolutionary Bioinformatics Online}, \bold{1}, 47-50.
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}

\seealso{
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
\code{\link{sim2structure}}
}
\examples{
## simulate F1 hybrids
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

## convert to Arlequin input file
sim2arlequin(F1hybrids,filename="F1hybrids_Arlequin.txt")
}
\keyword{hybridization}
\keyword{simulation}
