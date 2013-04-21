\name{hybridize}
\alias{hybridze}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{AFLP Simulator wih selection from parental data}
\description{
Simulate AFLP profiles (or other dominat markers) several hybrid classes (F1 and backcrosses on both parentals) from two parental populations. In addition, selection on several markers could be simulated in hybrid progeny.
}
\usage{
hybridize(pa,pb,Nf1,Nbxa, Nbxb, Nf2, type,hybrid,Nsel,S)

}
%- maybe also 'usage' for other objects documented here.
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
  \item{NBxA}{
Number of AFLP profiles to BxA population
}
  \item{NBxB}{
Number of AFLP profiles to BxB population
}
  \item{Nf2}{
Number of AFLP profiles to F2 population
}
 \item{type}{
Type of simulation: "neutral" or "selection"
}
 \item{hybrid}{
Hybrid classes to simulate. By default "all". Also "F1", "BxA", "BxB" and "F2"
}

  \item{Nsel}{
Number of loci under selection. Must be less than Nmarker
}
  \item{S}{
Selection coefficient (see Details)
}
}
\details{
Simulate F1, F2, Backcrosses to parental A (BxA) and Backcrosses to parental b (BxB) with and without selection. Parental profiles must be included. The selection coefficient S is a integer value from -1 to 1 (negative and positive selection). 
}
\value{
Object 'hybridsim' with:
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
https://github.com/fbalao/AFLPsim
}
\author{
F. Balao;
Garcia-Castaño J.L.
}

\seealso{
\code{\link{hybridize}}
}
\examples{
#AFLP profile Onopordum nervossum
ohinj<-read.table("./doc/onervossum.txt")


#AFLP profile Onopordum hinojense
onerv<-read.table("./doc/ohinojense.txt")

F1hybrids<-hybridize(pa=onerv,pb=ohinj, Nf1=30, type="selection", Nsel=25, hybrid="F1")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
