\name{AFLPsim}
\alias{AFLPsim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{AFLP Simulator wih selection}
\description{
Simulate AFLP profiles (or other dominat markers) of two parental populations and several hybrid classes (F1 and backcrosses on both parentals). In addition, selection on several markers could be simulated in hybrid progeny.
}
\usage{
AFLPsim(Nmarker, Na, Nb, Nf1, Nbxa, Nbxb, type, hybrid, apa, apb, Nsel, S)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Nmarker}{
The number of AFLP loci to simulate
}
  \item{Na}{
Number of AFLP profiles to parental 1 population
}
  \item{Nb}{
Number of AFLP profiles to parental 2 population
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
 \item{type}{
Type of simulation: "neutral" or "selection"
}
 \item{hybrid}{
Hybrid classes to simulate. By default "all". Also "F1", "BxA" and "BxB"
}

  \item{apa}{
alpha value in beta distribution for parental 1 population
}
  \item{apb}{
alpha value in beta distribution for parental 2 population
}
  \item{Nsel}{
Number of loci under selection. Must be less than Nmarker
}
  \item{S}{
Selection coefficient
}
}
\details{
Simulate dominant markers (AFLP, RFLP...). Parental allele frequencies are calculated following a beta distribution (Wrigth XXXX).
F1, Backcrosses to parental A (BxA) and Backcrosses to parental b (BxB) can be simulated with and without selection. The selection coefficient S is a integer value from -1 to 1 (negative and positive selection). 
}
\value{
Object 'hybridsim' with:
\item{PA }{AFLP profile parental population A}
\item{PB }{AFLP profile parental population A}
\item{F1}{AFLP profile F1 hybrid population}
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
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{hybridize}}
}
\examples{
hybrids<-hybridsim(Nmarker=100, Na=30, Nb=30, Nf1=30, type="selection", Nsel=25, hybrid="F1")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
