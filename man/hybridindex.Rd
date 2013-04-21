\name{hybridindex}
\alias{hybridindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Estimate Hybrid Index por AFLPsim objects}
\description{
This function finds maximum likelihood estimates of hybrid index as described by Buerkle (2005) using the packages "introgress"
}
\usage{
hybridindex(hybriddata)
%- maybe also 'usage' for other objects documented here.
}
\arguments{
  \item{hybriddata}{
A AFLPsim object with Parentals and hybrids profiles
}
}
\details{
Returns a hibrid index estimate and 95\% confidence interval of hybrid index.

See Buerkle (2005) for additional details.
}
\value{A data frame with point estimates of hybrid index and upper and lower limits of 95\% confidence intervals (interval of hybrid index that falls within two support units of the ML estimate):

\item{lower}{  
Lower limit of 95\% confidence interval.}

\item{h}{
Maximum-likelihood estimate of hybrid index.}

\item{upper}{
Upper limit of 95\% confidence interval.}
}
\references{
Balao
Buerkle 2005
https://github.com/fbalao/AFLPsim
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{est.h}}
}
\examples{
hybrids<-hybridsim(Nmarker=300, Na=100, Nb=100, Nf1=100, type="neutral", hybrid="F1")

hest<-hybridindex(hybrids)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}% __ONLY ONE__ keyword per line
