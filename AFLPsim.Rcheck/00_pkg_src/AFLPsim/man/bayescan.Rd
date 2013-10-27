\encoding{latin1}
\name{bayescan}
\alias{bayescan}
\title{Identifying candidate loci under natural selection with external application}
\description{
This function calls Bayescan program from within R to identifying candidate loci under natural selection from genetic data.
}
\usage{
bayescan(mat, filename, nbp = 20, pilot = 5000, burn = 50000, exec=NULL)}
\arguments{
  \item{mat}{A matrix with genotypic data to test in hybridsim format}
  \item{filename}{a character string giving the name of the output file (without extension)}
  \item{nbp}{Number of pilot runs (default is 2)}
  \item{pilot}{Length of pilot runs (default is 50)}
  \item{burn}{Burnin length (default is 5000)}
  \item{exec}{a character string giving the path to BAYESCAN. By default it tries to guess it depending on the operating system (see details).}
}
\details{
\code{bayescan} tries to guess the name of the executable program depending on the operating system. Specifically, the followings are used: "bayescan_2.1" under Linux and Mac, or "C:/Program Files/BayeScan2.1/binaries/BayeScan2.1_win32bits_cmd_line.exe" under Windows.
}
\value{
Several files with the results and a data.frame with the following variables:
\item{prob}{The posterior probability for the model including selection}
\item{log10.PO.}{The logarithm of Posterior Odds to base 10}
\item{qval}{q-values for each locus for the model including selection}
\item{alpha}{The estimated alpha coefficient indicating the strength and direction of selection. See Bayescan 2.1 manual}
\item{fst}{The Fst coefficient averaged over populations}
}
\references{
Foll, M. & O. Gaggiotti. 2008. A genome-scan method to identify selected loci appropriate for both dominant and codominant markers: a Bayesian perspective. \emph{Genetics} \bold{180}: 977-993. 
}
\author{
F. Balao \email{fbalao@us.es},  J.L. García-Castaño 
}
\seealso{
\code{\link{gscan}}
\code{\link{sim2bayescan}}
}
\examples{
## Not run
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1", S=100)
outbayes<-bayescan(hybrids, filename="bayescanresults", nbp=10, pilot=50, burn=100)
outbayes
}

\keyword{outlier}
\keyword{hybridization}
\keyword{genome scan}
