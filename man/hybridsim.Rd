\encoding{latin1}
\name{hybridsim}
\alias{hybridsim}
\title{AFLP simulator with selection}
\description{This function simulates AFLP profiles (or other dominant markers) of parentals and several hybrid classes (F1 and backcrosses on both parentals). In addition, selection on several markers can be simulated for the hybrid progeny.}
\usage{hybridsim(Nmarker, Na, Nb, Nf1, Nbxa = Nf1, Nbxb = Nf1, Nf2 = Nf1,
 type = "selection", hybrid = "all", Nsel = Nmarker * 0.1, S = 0, apa = 0.5, apb = 0.5)}
\arguments{
 \item{Nmarker}{The number of AFLP loci to simulate.}
 \item{Na}{number of AFLP profiles for Parental A.}
 \item{Nb}{number of AFLP profiles for Parental B.}
 \item{Nf1}{number of AFLP profiles for F1.}
 \item{Nbxa}{number of AFLP profiles for BxA.}
 \item{Nbxb}{number of AFLP profiles for BxB.}
 \item{Nf2}{number of AFLP profiles for F2.}
 \item{type}{type of simulation: \code{'neutral'} or \code{'selection'}.}
 \item{hybrid}{hybrid classes to simulate. By default \code{'all'}. Also \code{'F1'}, \code{'BxA'}, \code{'BxB'} or \code{'F2'}.}
 \item{Nsel}{number of loci under selection.}
 \item{S}{Selection coefficient (see Details)}
 \item{apa}{value for parameter 1 of the beta distribution}
 \item{apb}{value for parameter 2 of the beta distribution}
}

\details{
Simulate dominant markers (AFLP, RFLP...). Parental allele frequencies are calculated following a beta distribution (Wright 1931).
F1, F2, Backcrosses to parental A (BxA) and Backcrosses to parental b (BxB) can be simulated with and without selection. The selection coefficient S is a integer value from -1 to \eqn{\infty}.This coefficient is 0 when there is no selection (similar to type = "neutral") and it varies following negative and positive directional selection (negative and positive values, respectively).
}
\value{Object \code{hybridsim}  with:
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
Wright, S. 1931. Evolution in Mendelian Populations. \emph{Genetics} \bold{16}: 97-159. 
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}
\seealso{
\code{\link{hybridize}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", S=10, Nsel=25, hybrid="F1")
}
\keyword{hybridization}
\keyword{simulation}
