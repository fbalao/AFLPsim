\encoding{latin1}
\name{hybridize}
\alias{hybridize}
\title{AFLP simulator with selection from parental data}
\description{
This function simulates AFLP profiles (or other dominant markers) of several hybrid classes (F1 and backcrosses on both parentals) from two parental populations. In addition, selection on several markers can be simulated for the hybrid progeny.
}
\usage{
hybridize(pa,pb,Nf1, Nbxa = Nf1, Nbxb = Nf1, Nf2 = Nf1, type = "selection",
 hybrid = "all", Nsel = Nmarker * 0.1, S = 0)}

\arguments{

  \item{pa}{AFLP profile of Parental A. A data.frame or matrix.}
  \item{pb}{AFLP profile of Parental B. A data.frame or matrix.}
  \item{Nf1}{number of AFLP profiles for F1.}
  \item{Nbxa}{number of AFLP profiles for BxA.}
  \item{Nbxb}{number of AFLP profiles for BxA.}
  \item{Nf2}{number of AFLP profiles for F2.}
 \item{type}{type of simulation: \code{'neutral'} or \code{'selection'}.}
 \item{hybrid}{hybrid classes to simulate. By default \code{'all'}. Also \code{'F1'}, \code{'BxA'}, \code{'BxB'} or \code{'F2'}.}

  \item{Nsel}{number of loci under selection.}
  \item{S}{Selection coefficient (see Details)}
}
\details{
simulates F1, F2, Backcross to Parental A (BxA) and Backcross to Parental B (BxB) with and without selection. Parental profiles must be included (individuals in rows and markers in columns). he selection coefficient S is a integer value from -1 to \eqn{\infty}.This coefficient is 0 when there is no selection (similar to type = "neutral") and it varies following negative and positive directional selection (negative and positive values, respectively).
}
\value{
Object \code{\link{hybridsim}} with:
\item{PA }{Parental A AFLP profile}
\item{PB }{Parental B AFLP profile}
\item{F1}{F1 hybrid AFLP profile}
\item{F2}{F2 hybrid AFLP profile}
\item{BxA}{Backcross to Parental A AFLP profile }
\item{BxB}{Backcross to Parental B AFLP profile }
\item{Nsel}{Loci under selection (default, under neutral selection)}
\item{S}{Selection coefficient}
}
\references{
Balao, F. and García-Castaño, J.L.  AFLPsim: an R package to simulate and detect dominant markers under selection in  hybridizing populations.  \emph{Plant Methods} \bold{10}:40

Balao, F., Casimiro-Soriguer, R., García-Castaño, J.L., Terrab, A., Talavera, S. 2013. Big thistle eats the little thistle: Non-neutral unidirectional introgression endangers the conservation of \emph{Onopordum hinojense}. \emph{New Phytologist}, \emph{in press}.

Wright, S. 1931. Evolution in Mendelian populations. \emph{Genetics} \bold{16}: 97-159. 
}
\author{
F. Balao \email{fbalao@us.es}, J.L. García-Castaño 
}

\seealso{
\code{\link{hybridsim}}
}
\examples{
## AFLP profile Species A
SpeciesA<-read.table(system.file("/files/SpeciesA.txt",package="AFLPsim"),header=TRUE, row.names=1)


## AFLP profile Species B
SpeciesB<-read.table(system.file("/files/SpeciesB.txt",package="AFLPsim"),header=TRUE, row.names=1)

## simulate F1 hybrids
F1hybrids<-hybridize(pa=SpeciesA,pb=SpeciesB, Nf1=30, type="neutral", hybrid="F1")
}
\keyword{hybridization}
\keyword{simulation}
