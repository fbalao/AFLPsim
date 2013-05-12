\name{sim2structure}
\alias{sim2structure}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a Structure input file}
\description{
The function sim2newhybrids converts a hybridsim object into a Structure 2.3 input file. 

}
\usage{
sim2structure(x,filename)

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
Structure input file
}
\references{
Falush, D., M. Stephens, and J.K. Pritchard. 2007. Inference of population structure using multilocus genotype data: dominant markers and null alleles.\emph{Molecular Ecology Notes} \bold{7}: 574–578. 

Pritchard, J.K., M. Stephens, and P. Donnelly. 2000. Inference of population structure using multilocus genotype data. \emph{Genetics} \bold{155}: 945–959.
}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{sim2arlequin}}
\code{\link{sim2bayescan}}
\code{\link{sim2introgress}}
\code{\link{sim2newhybrids}}
\code{\link{sim2popgene}}
}
\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

sim2structure(F1hybrids,filename="F1hybrids_Structure.txt")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
