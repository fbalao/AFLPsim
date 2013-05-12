\name{hybridize}
\alias{hybridize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{AFLP Simulator wih selection from parental data}
\description{
Simulate AFLP profiles (or other dominant markers) several hybrid classes (F1 and backcrosses on both parentals) from two parental populations. In addition, selection on several markers could be simulated in hybrid progeny.
}
\usage{
hybridize(pa,pb,Nf1,Nbxa, Nbxb, Nf2, type,hybrid,Nsel,S)
}

\arguments{

  \item{pa}{
AFLP profiles of parental 1 population. A data.frame or matrix
}
  \item{pb}{
AFLP profiles of parental 2 population. A data.frame or matrix
}
  \item{Nf1}{
Number of AFLP profiles to F1 population
}
  \item{Nbxa}{
Number of AFLP profiles to BxA population
}
  \item{Nbxb}{
Number of AFLP profiles to BxB population
}
  \item{Nf2}{
Number of AFLP profiles to F2 population
}
 \item{type}{
Type of simulation: "neutral" or "selection"
}
 \item{hybrid}{
Hybrid classes to simulate. By default "all". Also "F1", "BxA", "BxB" and "F2".
}

  \item{Nsel}{
Number of loci under selection. Must be less than Nmarker
}
  \item{S}{
Selection coefficient (see Details)
}
}
\details{
Simulate F1, F2, Backcrosses to parental A (BxA) and Backcrosses to parental b (BxB) with and without selection. Parental profiles must be included. The selection coefficient S is a integer value from -10 to 10 (negative and positive selection). 
}
\value{
Object \code{hybridsim} with:
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
F. Balao \email{fbalao@us.es}, Garcia-Castaño J.L.
}

\seealso{
\code{\link{hybridsim}}
}
\examples{
#AFLP profile Species A
SpeciesA<-read.table(system.file("files/SpeciesA.txt",package="AFLPsim"),header=TRUE, row.names=1)


#AFLP profile Species B
SpeciesB<-read.table(system.file("files/SpeciesB.txt",package="AFLPsim"),header=TRUE, row.names=1)

F1hybrids<-hybridize(pa=SpeciesA,pb=SpeciesB, Nf1=30, type="neutral", hybrid="F1")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
