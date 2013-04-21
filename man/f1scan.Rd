\name{f1scan}
\alias{f1scan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Scan for dominant outlier loci in F1 hybrids}
\description{The f1scan () command find for outlier loci in F1 profiles creating a vector of significant otlier loci under after false disovery rate correction}
\usage{
f1scan(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
a list produced by AFLPsim.
}
}
\details{
This function (f1sczn) estimates outlier loci in AFLP genotype for F1 hybrid population using the method described by Balao et al.(2012).
}
\value{
A list with the following components:
\item{sigoutlier }{a vector with the loci identity from significance testing  }
}
\references{
Balao F., Casimiro-Soriguer R., Garcia-Castaño JL, Terrab A., and Talavera S. (2012) Big Thistle eats little thistle.Molecular Ecology doi:12345 
}
\author{
Francisco Balao fbalao@us.es
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (mat) 
{
    pa <- apply(mat$PA, 2, mean)
    pb <- apply(mat$PB, 2, mean)
    pf1 <- apply(mat$F1, 2, mean)
    Na <- dim(mat$PA)[1]
    Nb <- dim(mat$PB)[1]
    Nf1 <- dim(mat$F1)[1]
    Nmarker <- dim(mat$PA)[2]
    p.L <- function(x, n, alpha) {
        if (x == 0) 
            0
        else qbeta(alpha, x, n - x + 1)
    }
    p.U <- function(x, n, alpha) {
        if (x == n) 
            1
        else qbeta(1 - alpha, x + 1, n - x)
    }
    xU <- sapply(pa * Na, p.U, n = Na, alpha = 0.02532)
    xL <- sapply(pa * Na, p.L, n = Na, alpha = 0.02532)
    yL <- sapply(pb * Nb, p.L, n = Nb, alpha = 0.02532)
    yU <- sapply(pb * Nb, p.U, n = Nb, alpha = 0.02532)
    model <- function(x, y) {
        a <- 1 - sqrt(1 - x)
        b <- 1 - sqrt(1 - y)
        a + b - a * b
    }
    zUU <- model(xU, yU)
    zUL <- model(xU, yL)
    zLL <- model(xL, yL)
    zLU <- model(xL, yU)
    DUU <- pf1 - zUU
    DLL <- pf1 - zLL
    DLU <- pf1 - zLU
    DUL <- pf1 - zUL
    datos <- cbind(pf1 * Nf1, pf1, zLL, zUU, zLU, zUL, DLL, DUU, 
        DLU, DUL)
    datos <- as.data.frame(datos)
    colnames(datos) <- c("x", "z", "zLL", "zUU", "zLU", "zUL", 
        "dLL", "dUU", "dLU", "dUL")
    zbinomial <- function(x, z, zLL, zUU, zLU, zUL, dLL, dUU, 
        dLU, dUL) {
        if (sign(dLL) == sign(dUU) && sign(dUU) == sign(dLU) && 
            sign(dLU) == sign(dUL) && z > zLL) {
            maxz <- max(zLL, zUU, zLU, zUL)
            bi <- binom.test(x, n = Nf1, p = maxz)
            print(bi$p.value)
        }
        else if (sign(dLL) == sign(dUU) && sign(dUU) == sign(dLU) && 
            sign(dLU) == sign(dUL) && z < zLL) {
            minz <- min(zLL, zUU, zLU, zUL)
            bi <- binom.test(x, n = Nf1, p = minz)
            print(bi$p.value)
        }
        else {
            1
        }
    }
    marker <- Nmarker
    pvaluebinomf1 <- numeric(length(marker))
    for (i in 1:marker) {
        pvaluebinomf1[i] <- zbinomial(datos$x[i], datos$z[i], 
            datos$zLL[i], datos$zUU[i], datos$zLU[i], datos$zUL[i], 
            datos$dLL[i], datos$dUU[i], datos$dLU[i], datos$dUL[i])
    }
    fdrf1 <- p.adjust(pvaluebinomf1, method = "fdr")
    fdrf1 <- as.data.frame(fdrf1)
    rownames(fdrf1) <- 1:marker
    write.table(fdrf1, file = "fdrf1.txt")
    sigf1 <- as.numeric(rownames(fdrf1)[fdrf1 < 0.01])
    return(sigf1)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~f1scan }
\keyword{ ~outlier }% __ONLY ONE__ keyword per line
\keyword{ ~AFLP }% __ONLY ONE__ keyword per line