#' Make a histogram for tablulated data
#'
#' @param dwtable    A dwtable object.
#'
#' @export
data_histogram <- function(x, i = 1, xlab = NULL, title = NULL,

                     values = NULL, ...){


     br <-length(x)
     names(table1) <-values
     hist (table1, freq = TRUE,
           labels = values, main = title)
}
