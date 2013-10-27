\encoding{latin1}
\name{hybridindex}
\alias{hybridindex}
\title{Estimate hybrid index por \code{hybridsim} objects}
\description{This function finds maximum likelihood estimates of hybrid index as described by \cite{Buerkle (2005)} using the packages \pkg{introgress}}
\usage{hybridindex(data)}
\arguments{
\item{data}{an \code{\link{hybridsim}} object with the profiles of parentals and hybrids.}}
\details{\code{hybridindex} returns a hybrid index estimate with its 95\% confidence interval. See \code{\link{est.h}} and \cite{Buerkle (2005)} for additional details.}
\value{A data frame with estimates of hybrid index and upper and lower limits of its 95\% confidence intervals, which falls within two support units of the maximum-likelihood estimate:
 \item{lower}{95\% confidence interval lower limit.}
 \item{h}{Maximum-likelihood estimate of the hybrid index.}
 \item{upper}{95\% confidence interval upper limit.}
}
\references{
Buerkle C. A. (2005) Maximum-likelihood estimation of a hybrid index based on molecular markers. \emph{Molecular Ecology Notes}, \bold{5}: 684-687.

Gompert Z. and Buerkle C. A. (2010) introgress: a software package for mapping components of isolation in hybrids. \emph{Molecular Ecology Resources},\bold{10}, 378-384
}
\author{F. Balao \email{fbalao@us.es}; J.L. Garc?a-Casta?o 
}
\seealso{
\code{\link[introgress]{est.h}}
}
\examples{
## simulate parentals and F1 hybrids
hybrids<-hybridsim(Nmarker=50, Na=10, Nb=10, Nf1=10, type="neutral", hybrid="F1")

## estimate hybrid index
hest<-hybridindex(hybrids)
}
\keyword{hybridization}
