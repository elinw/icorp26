#' Make a barplot
#'
#' @param x    A vector.
#' @param i Numeric indicator of Which table should be plotted.
#' @param xlab A string to use for labelling the x axis
#' @param ylab A string to use for labelling the y axis
#' Defaults to 1.
#' @param title A string to be used as the graph title
#' @param values A vector of labels to use for labelling the slices.
#' Must match the numerical order of the variable.
#' @param ... Additional options
#'
#' @aliases data_bar
#' @export
distribution_bar <- function(
  x,
  i = 1,
  xlab = NULL,
  ylab = NULL,
  title = NULL,
  values = NULL,
  ...
) {
  dwtable <- datawizard::data_tabulate(x)
  tablelist <- as.table(dwtable)
  table1 <- tablelist[[i]]
  table1 <- as.vector(table1)

  graphics::barplot(
    height = table1,
    xlab = xlab,
    ylab = ylab,
    main = title,
    names.arg = values
  )
}
