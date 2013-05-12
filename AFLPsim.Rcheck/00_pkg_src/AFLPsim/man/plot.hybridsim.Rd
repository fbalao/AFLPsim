\name{plot.hybridsim}
\alias{plot.hybridsim}
\title{Plotting hybridsim objects}
\description{
\code{\link{hybridsim}} object can be plotted using the function \code{hybridsim.plot}, which is also used as the dedicated plot method. These functions relie on image to represent hybrid markers frequency on a neutral expectation sheet.}
\usage{
plot.hybridsim(x, hybrid = c("F1", "BxA", "BxB"), col = "lightgreen", shade = 0.8, markers = x$SelMarkers) 
\method{plot}{hybridsim}(x,hybrid=c("F1","BxA","BxB"),col="lightgreen",shade=0.8, markers= x$SelMarkers)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{x}{
A \code{hybridsim} object
}
 \item{hybrid}{
Hybrid classe to simulate, "F1", "BxA" or "BxB".
}
  \item{col}{
A specification for the default plotting color
}
  \item{shade}{
A specification for the default alpha value
}
  \item{markers}{
numeric vectors with markers to plot
}

}
\details{
Simulate dominant markers (AFLP, RFLP...). Parental allele frequencies are calculated following a beta distribution (Wright 1931).
F1, F2, Backcrosses to parental A (BxA) and Backcrosses to parental b (BxB) can be simulated with and without selection. The selection coefficient S is a integer value from -1 to 1 (negative and positive selection).  
}
\value{
Object \code{hybridsim}  with:
\item{PA }{AFLP profile parental population A}
\item{PB }{AFLP profile parental population A}
\item{F1}{AFLP profile F1 hybrid population}
\item{F2}{AFLP profile F2 hybrid population}
\item{BxA}{AFLP profile Backcrosses to parental population A}
\item{BxB}{AFLP profile Backcrosses to parental population B}
\item{Nsel}{Loci under selection. NA under neutral selection}
\item{S}{Selection Coefficient}
}
\references{
Wright, S. 1931. Evolution in Mendelian Populations. \emph{Genetics} \bold{16}: 97–159. 
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{hybridize}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
