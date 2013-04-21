\name{popsim}
\alias{popsim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Genetic drift AFLP Simulator under island-model}
\description{
Simulation Wrigth-Fisher population with subpopulations and genetic drift for dominant markers
}
\usage{
pop.sim(N,n,N.gen,N.markers,pop,apa,apb)

}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{N}{
Total number of individuals (Sum of individual in each subpopulation)
}
  \item{n}{
Number of demes
}
  \item{N.gen}{
Number of generations to simulate
}
  \item{N.markers}{
Number of AFLP markers
}
  \item{pop}{
Number of subpopulations in each deme
}
  \item{apa}{
positive value in beta distribution 
}
 \item{apb}{
positive value in beta distribution
}
}
\details{
Simulate
}
\value{
List object with profiles for each demes and subpopulations.
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
\code{\link{hybridsim}}
}
\examples{
#Simulation 4 demes 4 subpopulation each one, 60 generations, 100 markers
4island<-pop.sim(N=160,n=4,N.gen=50,N.markers=100,pop=4,apa=0.5,apb=0.5)

#Deme 1 subpopulation 1
print(4island$subpopulation1$subsubpo1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hybridization}
\keyword{simulation}% __ONLY ONE__ keyword per line
