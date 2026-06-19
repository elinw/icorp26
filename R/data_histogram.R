#' Make a histogram for untablulated data
#'
#' @param x  A vector.
#' @param xlab A string to use for labelling the x axis
#' @param title A string to be used as the graph title
#' @param values A vector of labels to use for labelling the slices.
#'
#' @aliases data_histogram
#' @export
distribution_histogram <- function(
  x,
  xlab = NULL,
  title = NULL,
  values = NULL
) {
  if (!is.null(values)) {
    br <- length(values)
  } else {
    br <- insight::n_unique(x) + 1
  }

  graphics::hist(x, breaks = c(0:br), main = title, xlab = "")
  graphics::axis(
    1,
    1:(br),
    labels = values,
    las = 2,
    tick = FALSE,
    padj = -1.5,
    cex.axis = .5
  )
}
