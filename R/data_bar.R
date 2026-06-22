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
  ...
) {
  dwtable <- datawizard::data_tabulate(x, verbose = FALSE)
  tablelist <- as.table(dwtable, verbose = FALSE)
  table1 <- tablelist[[i]]
  table1 <- as.data.frame(table1)
  labels <- table1$category
  p <- ggplot(table1, aes(x = Var1, y = Freq)) +
    geom_col() +
    labs(title = title, x = xlab, y = ylab)

  p
}

#' Make a barplot for group means
#'
#' @param x  A dw_groupmeans data frame.
#' @param xlab A string to use for labelling the x axis
#' @param ylab A string to use for labelling the y axis
#' @param title A string to be used as the graph title
#'
#' @export
data_groupmeans_bar <- function(
  x,
  xlab = NULL,
  ylab = NULL,
  title = NULL
) {
  means <- x$Mean
  names(means) <- x$Category
  means <- means[1:(length(means) - 1)]
  ggplot(means, x = Mean) +
    geom_bar()
}
