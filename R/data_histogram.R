#' Make a histogram for tablulated data
#'
#' @param dwtable    A dwtable object.
#'
#' @export
data_histogram <- function(x, i = 1, xlab = NULL, title = NULL,

                     values = NULL, ...){

     if (!is.null(values)) {
       br <-length(values)
     } else {
       br <- n_unique(x) + 1
      }

     hist (x, labels = values,
           breaks = br, main = title)
}
