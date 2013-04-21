.Last <-
structure(function (...) 
{
    tryCatch({
        if (exists("finalizeSession", mode = "function")) 
            finalizeSession()
    }, error = function(ex) {
        cat("Ignoring error occured in .Last(): ", as.character(ex))
    })
}, finalizeSession = TRUE, finalizeSessionVersion = "1.19.5")
