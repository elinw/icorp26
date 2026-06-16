#' Make a histogram for tablulated data
#'
#' @param dwtable    A dwtable object.
#'
#' @export
data_histogram <- function(x, i = 1, xlab = NULL, title = NULL,

                     values = NULL, ...){

     dwtable <- data_tabulate(x)
     tablelist <- datawizard:::as.table.datawizard_table(dwtable)
     table1 <- tablelist[[i]]
     names1 <- names(table1)
     table1 <- as.vector(table1)
     br <-length(values)
     names(table1) <-values
     hist (table1, freq = TRUE,
           labels = values, main = title)
}
