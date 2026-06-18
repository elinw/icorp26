#' calculate a mean
#'
#' @param x   A vector
#' @param to_numeric Logical indicating if non numeric vectors
#'                   should be coerced to numeric.
#'
#' @export
data_mean <- function(x, remove_na = TRUE, to_numeric = FALSE) {
  if (is.factor(x)) {
    x <- datawizard::to_numeric(x)
  }
  mean(x, na.rm = remove_na)
}

#' Calculate a median
#'
#' @param x   A vector
#' @param to_numeric Logical indicating if non numeric vectors
#'                   should be coerced to numeric.
#'
#' @export
data_median <- function(x, remove_na = TRUE, to_numeric = FALSE) {
  if (is.factor(x)) {
    x <- datawizard::to_numeric(x)
  }
  median(x, na.rm = remove_na)
}

#' Calculate variance
#'
#' @param x   A vector
#' @param to_numeric Logical indicating if non numeric vectors
#'                   should be coerced to numeric.
#'
#' @export
data_variance <- function(x, remove_na = TRUE, to_numeric = FALSE) {
  if (is.factor(x)) {
    x <- datawizard::to_numeric(x)
  }
  var(x, na.rm = remove_na)
}

#' Calculate standard deviation
#'
#' @param x A vector
#' @param to_numeric Logical indicating if non numeric vectors
#' should be coerced to numeric.
#'
#' @export
data_sd <- function(x, remove_na = TRUE, to_numeric = FALSE) {
  if (is.factor(x)) {
    x <- datawizard::to_numeric(x)
  }
  sd(x, na.rm = remove_na)
}
