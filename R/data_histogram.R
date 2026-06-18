#' Make a histogram for untablulated data
#'
#' @param x  A vector.
#'
#' @export
data_histogram <- function(
  x,
  i = 1,
  xlab = NULL,
  title = NULL,

  values = NULL,
  ...
) {
  if (!is.null(values)) {
    br <- length(values)
  } else {
    br <- n_unique(x) + 1
  }

  hist(x, breaks = c(0:br), main = title, xlab = "")
  axis(
    1,
    1:(br),
    labels = values,
    las = 2,
    tick = FALSE,
    padj = -1.5,
    cex.axis = .5
  )
}
