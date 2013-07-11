\name{introgressformat}
\alias{introgressformat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Format the AFLPsim to introgress packages format
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
introgressformat(matriz)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{matriz}{
%%     ~~Describe \code{matriz} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
function (matriz) 
{
    parental1 <- t(matriz$PA)
    parental2 <- t(matriz$PB)
    admix.gen <- t(matriz$F1)
    loci <- cbind(colnames(matriz$PA), rep("D", ncol(matriz$PA)))
    colnames(loci) <- c("locus", "type")
    introgress <- list(parental1, parental2, admix.gen, loci)
    names(introgress) <- c("paretal1", "parental2", "admix.gen", 
        "loci")
    introgress
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
