#' Make a pie chart for tabulated data
#'
#' @param dwtable    A dwtable object.
#'
#' @export
data_pie <- function(x, i = 1, labels = NULL, title = NULL,
                     values = NULL, ...){

     dwtable <- data_tabulate(x)
     tablelist <- datawizard:::as.table.datawizard_table(dwtable)
     table <- tablelist[[i]]
     pie (table, labels = labels, main = title)
}
