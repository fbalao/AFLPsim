plot.pseudogel <-function (x, hybrid="all",nrgcols = 2, rlabels = TRUE, clabels = TRUE, 
    rcols = 1, ccols = 1, title = "", ...) {
  
  #if (hybrid == "all")
  #  x2<-rbind(x$PA,x$BxA,x$F1,x$F2,x$BxB,x$PB)
#    else
     #hyb<- paste("x","$",hybrid,sep="")
      x2<-rbind(x$PA,x$F1,x$PB)
    n <- nrow(x2)
    p <- ncol(x2)
    if(nrgcols==2){
      colors=c('black', 'green')
      } else {
      colors=heat.colors(nrgcols)
      }     
    
    image(1:p, 1:n, t(x2[n:1, ]), col = colors, 
        axes = FALSE, xlab = "", ylab = "", ...)
    if (length(ccols) == 1) {
        axis(3, at = 1:p, labels = clabels, las = 2, cex.axis = 0.6, 
            col.axis = ccols)
    }
    if (length(ccols) == p) {
        cols <- unique(ccols)
        for (i in 1:length(cols)) {
            which <- (1:p)[ccols == cols[i]]
            axis(3, at = which, labels = clabels[which], las = 2, 
                cex.axis = 0.6, col.axis = cols[i])
        }
    }
    if (length(rcols) == 1) {
        axis(2, at = n:1, labels = rlabels, las = 2, cex.axis = 0.6, 
            col.axis = rcols)
    }
    if (length(rcols) == n) {
        cols <- unique(rcols)
        for (i in 1:length(cols)) {
            which <- (1:n)[rcols == cols[i]]
            axis(2, at = (n:1)[which], labels = rlabels[which], 
                las = 2, cex.axis = 0.6, col.axis = cols[i])
        }
    }
    mtext(title, side = 3, line = 3)
    box()
}
