
#' data_chisq
#'
#' Creates a file that matches the basic plots vignette
#' @param dwtable    A dwtable object.
#'
#' @export
data_chisq <- function(dwtable, ...){
     tablelist <- as.table(dwtable)
     chisqlist <- lapply(tablelist, chisq.test)
     if (length(chisqlist) == 1){
          return(chisqlist[[1]])
     }
     chisqlist
}
