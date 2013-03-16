\name{AFLPsim}
\alias{AFLPsim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{AFLP Simulator and Outlier loci scan}
\description{
Este paquete hace cosas muy guapas
}
\usage{
AFLPsim(Nmarker, Na, Nb, Nf1, apa, apb, Nsel, S)
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
  \item{apa}{
alpha value in beta distribution for parental 1 population
}
  \item{apb}{
alpha value in beta distribution for parental 1 populatio
}
  \item{Nsel}{
Number of loci under selection. Must be less than Nmarker
}
  \item{S}{
Selection coefficient
}
}
\details{
Simulador de marcadores dominates
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (Nmarker, Na, Nb, Nf1, apa, apb, Nsel, S) 
{
    pa <- matrix(1, Na, Nmarker)
    p1 <- rbeta(Nmarker, apa, apa)
    for (i in 1:Nmarker) pa[, i] <- rbinom(Na, 1, p1[i])
    pb <- matrix(1, Nb, Nmarker)
    p2 <- rbeta(Nmarker, apb, apb)
    for (i in 1:Nmarker) pb[, i] <- rbinom(Nb, 1, p2[i])
    neutralmodel <- function(x, y) {
        a <- 1 - sqrt(1 - x)
        b <- 1 - sqrt(1 - y)
        a + b - a * b
    }
    fa <- apply(pa, 2, mean)
    fb <- apply(pb, 2, mean)
    fprogeny <- neutralmodel(fa, fb)
    progeny <- matrix(1, 1000, Nmarker)
    for (i in 1:Nmarker) progeny[, i] <- rbinom(1000, 1, fprogeny[i])
    sel <- sample(1:Nmarker, Nsel)
    sel <- sort(sel)
    fS <- fprogeny[sel] * S
    fS[fS > 1] <- 1
    nsel <- length(sel)
    selections <- matrix(1, 1000, nsel)
    for (i in 1:nsel) selections[, i] <- rbinom(1000, 1, fS[i])
    progeny[, sel] <- selections
    f1sel <- progeny[sample(nrow(progeny), Nf1), ]
    markers <- paste("M", seq(1, Nmarker, 1), sep = "")
    PA <- paste("PA", seq(1, Na, 1), sep = "")
    PB <- paste("PB", seq(1, Nb, 1), sep = "")
    F1 <- paste("F1", seq(1, nrow(f1sel), 1), sep = "_")
    colnames(pa) <- markers
    rownames(pa) <- PA
    colnames(pb) <- markers
    rownames(pb) <- PB
    colnames(f1sel) <- markers
    rownames(f1sel) <- F1
    simulation <- list(pa, pb, f1sel, sel)
    names(simulation) <- c("PA", "PB", "F1", "SelMarkers")
    simulation
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
