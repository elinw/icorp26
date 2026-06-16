#' Make a barplot for tabulated data
#'
#' @param dwtable    A dwtable object.
#'
#' @export
data_bar <- function(x, i = 1, xlab = NULL, ylab =NULL,
                     title = NULL,
                     labels = NULL, ...){

     dwtable <- data_tabulate(x)
     tablelist <- datawizard:::as.table.datawizard_table(dwtable)
     table1 <- tablelist[[i]]
     table1 <- as.vector(table1)
     barplot(table1, xlab = xlab, ylab= ylab, main = title,
             names.arg = labels)
}
