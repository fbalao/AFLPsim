\encoding{latin1}
\name{gscan}
\alias{gscan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Genome scan for hybrids}
\description{
This function fits genomic scan to dominant genotypic data using the method described by \cite{Gagnaire et al (2009)} and the new method by Balao et al (2013; \emph{in preparation}). Significance testing for outlier loci is included.
}
\usage{
gscan(mat, type=c("F1","BxA","BxB"), method=c("bal&gar-ca","gagnaire"))
%- maybe also 'usage' for other objects documented here.
}
\arguments{
  \item{mat}{
an object of class '\code{hybridsim}' produced by '\code{\link{hybridsim}}' or '\code{\link{hybridize}}' functions
}
  \item{type}{
the type of hybrid classes; either "F1", "BxA" or "BxB"
}
  \item{method}{
 a character string specifying the method to test significance of outlier loci; either "gagnaire" or "bal&gar-ca". See Details. 
}
}
\details{
These genome scan methods calculate the null distribution of frequencies under a neutral model.

Gagnaire's method uses a binomial test to outlier significance. For more conservative and unbiased method,   "Bal&gar-car" method calculates the 95\% confidence expected hybrid frequencies by the Clopper-Pearson 'exact' procedure (Clopper & Pearson 1934; Brown et al. 2001).  

In both methods, the False Discovery Rate (FDR) correction (Benjamini & Hochberg 1995) is used to counteract for multiple comparisons and control the expected proportion of incorrectly rejected null hypotheses.
}
\value{
A list with the following components:
\item{P-values }{a matrix with P values after False Discovery Rate correction for each loci}
\item{Outlier }{a vector with outliers}
}
\references{
Balao, F., Casimiro-Soriguer, R., García-Castaño, J.L., Terrab, A., Talavera, S. 2013. Big thistle eats the little thistle: Non-neutral unidirectional introgression endangers the conservation of \emph{Onopordum hinojense}. \emph{Molecular Ecology}, \emph{in preparation}.

Benjamini, Y., and Y. Hochberg. 1995. Controlling the false discovery rate: a practical and powerful approach to multiple testing. \emph{Journal of the Royal Statistical Society. Series B} \bold{57}: 289-300.

Brown LD, Cai TT, Anirban D (2001) Interval estimation for a binomial proportion. \emph{Statistical Science} \bold{16}: 101-117.

Clopper CJ, Pearson ES (1934) The use of confidence or fiducial limits illustrated in the case of the binomial. \emph{Biometrika} \bold{26}: 404-413

Gagnaire, P.A., V. Albert, B. Jonsson, L. Bernatchez. 2009. Natural selection influences AFLP intraspecific genetic variability and introgression patterns in Atlantic eels. \emph{Molecular Ecology} \bold{18}: 1678-1691.

}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}

\seealso{
\code{\link{hybridsim}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=5,Nsel=25, hybrid="F1")

outliers<-gscan(hybrids, type="F1", method="bal&gar-ca")
}
\keyword{outlier}
\keyword{hybridization}
\keyword{genome scan}
