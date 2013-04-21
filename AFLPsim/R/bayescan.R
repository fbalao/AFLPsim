bayescan <-
function (mat, filename, nbp = 20, pilot = 5000, burn = 50000, exec=NULL) 
{
    bayescanformat(mat, filename)
    prefix <- c("-nbp", "-pilot", "-burn")
    suffix <- c(nbp, pilot, burn)
    opts <- paste(prefix, suffix, sep = " ", collapse = " ")
       os <- Sys.info()[1]
    if (is.null(exec)) {
        if (os == "Linux") 
            user<-Sys.getenv("USER") 
            exec= paste("/home/",user, "/BayeScan2.1/binaries/BayeScan2.1_linux32bits", sep = "")
        if (os == "Darwin") 
           stop("Not for Mac")
        if (os == "Windows") 
            shortPathName("C:/Program Files/BayeScan2.1/binaries/BayeScan2.1_win32bits_cmd_line.exe")
    }
    
    system(paste(exec, opts, filename))
    out <- paste(filename, "_fst.txt", sep = "")
    resultfst <- read.table(out, header = T, row.names = 1)
    outliers <- plot_bayescan(out, 1, FDR = 0.05)
    TP <- rates(outliers$outliers, mat)
    result <- list(resultfst, outliers, TP)
    result
}
