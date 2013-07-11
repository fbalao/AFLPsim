\name{sim2genind}
\alias{sim2genind}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert a hybridsim object to a genind object}
\description{
The function sim2genind converts a \code{\link{hybridsim}} object into a \code{\link{genind}} object of the package \pkg{adegenet}. It is wrapper of the function  \code{\link{df2genind}}

}
\usage{
sim2structure(x)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
a hybridsim object
}
}
\value{
A \code{\link{genind}} object
}

\author{
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{genind}}
\code{\link{df2genind}}
}

\examples{
F1hybrids<-hybridsim(Nmarker=100,Na=100,Nb=100,Nf1=30, type="neutral", hybrid="F1")

F1gen<-sim2genind(F1hybrids)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
