#' Make a pie chart for tabulated data
#'
#' @param x  A vector
#' @param i Numeric indicator of Which table from a list of
#' tables should be plotted.
#' Defaults to 1.
#' @param title A string to be used as the graph title
#' @param values A vector of labels to use for labelling the slices.
#' Must match the numerical order of the variable.
#' @param ... Additional options
#'
#' @aliases data_pie
#' @export

distribution_pie <- function(
  x,
  i = 1,
  title = NULL,
  values = NULL,
  ...
) {
  dwtable <- datawizard::data_tabulate(x, verbose = FALSE)
  tablelist <- as.table(dwtable, verbose = FALSE)
  table <- tablelist[[i]]
  graphics::pie(table, labels = labels, main = title)
}
