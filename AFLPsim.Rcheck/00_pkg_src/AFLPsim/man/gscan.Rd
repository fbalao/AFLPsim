\name{gscan}
\alias{gscan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Genome scan for hybrids}
\description{
This function fits genomic scan to dominant genotypic data using the method described by Gagnaire et al (2009) and the new method by Balao et al (2013). Significance testing for outlier loci is included.
}
\usage{
gscan(mat, type=c("F1","BxA","BxB"), method=c("balao","gagnaire"))
%- maybe also 'usage' for other objects documented here.
}
\arguments{
  \item{mat}{
A hybridsim object produced by hybridsim or hybridize
}
  \item{type}{
type of hybrid classes; either "F1", "BxA" or "BxB"
}
  \item{method}{
  method to test significance of outlier loci; either "gagnaire" or "balao". See Details.
}
}
\details{
These genome scan methods calculate the null distribution of frequencies under a neutral model. A binomial test is used to outlier significance. 
}
\value{
A list with the following components:
\item{P-values }{a matrix with p-values after False Discovery correction for each loci}
\item{Outlier }{a vector with outliers}
}
\references{
Balao, F., Casimiro-Soriguer, R., Garcia-Castaño, J.L., Terrab, A., Talavera, S. 2013. Big thistle eats the little thistle: Non-neutral unidirectional introgression endangers the conservation of \emph{Onopordum hinojense}. \emph{Molecular Ecology}, \emph{in preparation}.

Benjamini, Y., and Y. Hochberg. 1995. Controlling the false discovery rate: a practical and powerful approach to multiple testing. \emph{Journal of the Royal Statistical Society. Series B} \bold{57}: 289–300.

Gagnaire, P.A., V. Albert, B. Jónsson, L. Bernatchez. 2009. Natural selection influences AFLP intraspecific genetic variability and introgression patterns in Atlantic eels. \emph{Molecular Ecology} \bold{18}: 1678–1691.

}
\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{hybridsim}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=5,Nsel=25, hybrid="F1")

outliers<-gscan(hybrids, type="F1", method="balao")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{outlier}
\keyword{hybridization}
\keyword{genome scan}% __ONLY ONE__ keyword per line
