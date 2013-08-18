plot.hybridsim <-
function(x, hybrid = c("F1", "BxA", "BxB"), col = "lightgreen", 
    shade = 0.8, markers = x$SelMarkers,...) 
{
    pa <- apply(x$PA, 2, mean)
    pb <- apply(x$PB, 2, mean)
    pf1 <- apply(x$F1, 2, mean)
    Na <- dim(x$PA)[1]
    Nb <- dim(x$PB)[1]
    Nf1 <- dim(x$F1)[1]
    Nbxa <- dim(x$BxA)[1]
    Nbxb <- dim(x$BxB)[1]
    i <- markers
    x <- seq(0, 1, 0.05)
    y <- seq(0, 1, 0.05)
    model <- function(x, y) {
        a <- 1 - sqrt(1 - x)
        b <- 1 - sqrt(1 - y)
        a + b - a * b
    }
    hybrid <- match.arg(hybrid)
    if (hybrid == "F1") {
        teoricof1 <- model(pa, pb)
        z <- outer(x, y, model)
        resf1 <- persp(x, y, z, thet = -30, phi = 25, ticktype = "detailed", 
            col = col, shade = shade, xlab = "Parental A", 
            ylab = "Parental B", zlab ="F1", cex.lab=1.2)
        points(trans3d(pa[i], pb[i], pf1[i], pmat = resf1), pch = 21, 
            col = 1, bg = 2, cex = 2)
        to <- trans3d(pa[i], pb[i], teoricof1[i], pmat = resf1)
        from <- trans3d(pa[i], pb[i], pf1[i], pmat = resf1)
        segments(from$x, from$y, to$x, to$y, col = 2, lwd = 2.5)
    }
    if (hybrid == "BxB") {
        if (is.null(x$BxB) == TRUE) 
            stop("You need backcross individuals")
        else pbxb <- apply(x$BxB, 2, mean)
        modelbcb <- function(x, y) {
            a <- 1 - sqrt(1 - x)
            b <- 1 - sqrt(1 - y)
            0.5 * ((3 * b) + a - (b^2) - (a * b))
        }
        teoricobx <- modelbcb(pa, pb)
        zbxb <- outer(x, y, modelbcb)
        resbxb <- persp(x, y, zbxb, thet = -30, phi = 25, ticktype = "detailed", 
            col = col, shade = shade, xlab = "Parental A", 
            ylab = "Parental B", zlab = "BxB", cex.lab=1.2)
        points(trans3d(pa[i], pb[i], pbxb[i], pmat = resbxb), 
            pch = 21, col = 1, bg = 2, cex = 2)
        to <- trans3d(pa[i], pb[i], teoricobx[i], pmat = resbxb)
        from <- trans3d(pa[i], pb[i], pbxb[i], pmat = resbxb)
        segments(from$x, from$y, to$x, to$y, col = 2, lwd = 2.5)
    }
    if (hybrid == "BxA") {
        if (is.null(x$BxA) == TRUE) 
            stop("You need backcross individuals")
        else pbxa <- apply(x$BxA, 2, mean)
        modelbca <- function(x, y) {
            a <- 1 - sqrt(1 - x)
            b <- 1 - sqrt(1 - y)
            0.5 * ((3 * a) + b - (a^2) - (a * b))
        }
        teoricobxa <- modelbca(pa, pb)
        zbxa <- outer(x, y, modelbca)
        resbxa <- persp(x, y, zbxa, thet = -30, phi = 25, ticktype = "detailed", 
            col = col, shade = shade, xlab = "Parental A", 
            ylab = "Parental B", zlab = "BxA", cex.lab=1.2)
        points(trans3d(pa[i], pb[i], pbxa[i], pmat = resbxa), 
            pch = 21, col = 1, bg = 2, cex = 2)
        to <- trans3d(pa[i], pb[i], teoricobxa[i], pmat = resbxa)
        from <- trans3d(pa[i], pb[i], pbxa[i], pmat = resbxa)
        segments(from$x, from$y, to$x, to$y, col = 2, lwd = 2.5)
    }}
