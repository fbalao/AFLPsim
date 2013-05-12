\name{bayescan}
\alias{bayescan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Identifying candidate loci under natural selection with External Application}
\description{
These functions call Bayescan program from R to identifying candidate loci under natural selection from genetic data.
}
\usage{
bayescan(mat, filename, nbp = 20, pilot = 5000, burn = 50000, exec=NULL)
%- maybe also 'usage' for other objects documented here.
}
\arguments{
  \item{mat}{
A matrix with genotypic data to test
}
  \item{filename}{
a character string giving the name of the output file
}
  \item{nbp}{
Number of pilot runs, default is 2 
}
  \item{pilot}{
Length of pilot runs, default is 50
}
  \item{burn}{
Burnin length, default is 5000
}
  \item{exec}{
a character string giving the path to bayescan, default it tries to guess it depending on the operating system (see details).
}
}
\details{
bayescan tries to guess the name of the executable program depending on the operating system. Specifically, the followings are used: “/home/BayeScan2.1/binaries/BayeScan2.1_linux32bits"” under Linux, or “C:/Program Files/BayeScan2.1/binaries/BayeScan2.1_win32bits_cmd_line.exe” under Windows. For Mac is under develop
}
\value{
A list with the following components:
\item{resultfst}{XXXXXXX}
\item{outliers}{a vector with outliers}
\item{TP}{XXXXXXXXXX}
}
\references{
Foll, M., and O. Gaggiotti. 2008. A genome-scan method to identify selected loci appropriate for both dominant and codominant markers: a Bayesian perspective. \emph{Genetics} \bold{180}: 977–93. 
}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{gscan}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=4,Nsel=25, hybrid="F1")

outliers<-gscan(hybrids, type="F1", method="balao")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{outlier}
\keyword{hybridization}
\keyword{genome scan}% __ONLY ONE__ keyword per line
