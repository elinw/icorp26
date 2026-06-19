#' Calculate chi square test for tabulate
#'
#' @param dwtable    A dwtable object.
#' @param ...  Other options
#'
#' @export
data_chisq <- function(dwtable, ...) {
  tablelist <- as.table(dwtable)
  chisqlist <- lapply(tablelist, stats::chisq.test)
  if (length(chisqlist) == 1) {
    return(chisqlist[[1]])
  }
  chisqlist
}
