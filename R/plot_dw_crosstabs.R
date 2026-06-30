#' Plot method for crosstabs
#'
#' The `plot()` method for `datawizard_crosstab` objects
#'
#' @param x  An object returned from `datawizard::datawizard_crosstab()`.
#' @param y  Not currently used
#' @param ... Not currently used
#' @exportS3Method
plot.datawizard_crosstab <- function(x) {
  x <- datawizard::data_select(x, -"NA")
  x <- x[!is.na(x[, 1])]
  proportion_type <- attr(x, "proportions")
  if (is.null(proportion_type)) {
    x_long <- datawizard::data_to_long(
      x,
      rows_to = "row_var",
      select = names(x)[-1]
    )
  } else {
    x_long <- attr(x, "prop_table") |>
      datawizard::data_to_long(rows_to = "row_var")
  }
  p <- ggplot2::ggplot(x_long)
  plotlist <- list()
  if (is.null(proportion_type)) {
    plotlist[[1]] <- ggplot2::aes(x = row_var, y = name, fill = value)
    plotlist[[2]] <- ggplot2::geom_tile()
    plotlist[[3]] <- ggplot2::scale_fill_gradient(low = "white", high = "navy")
    plotlist[[4]] <- ggplot2::geom_text(
      ggplot2::aes(label = value, color = abs(value) > 0.5), # white text on dark tiles
      size = 2.8
    )
  } else if (proportion_type == "row") {
    plotlist[[1]] <- ggplot2::aes(x = row_var, y = value, fill = name)
    plotlist[[2]] <- ggplot2::geom_col()
    plotlist[[3]] <- ggplot2::coord_flip()
  } else if (proportion_type == "column") {
    plotlist[[1]] <- ggplot2::aes(x = name, y = value, fill = row_var)
    plotlist[[2]] <- ggplot2::geom_col()
  } else if (proportion_type == "full") {
    plotlist[[1]] <- ggplot2::aes(x = row_var, y = name, fill = value)
    plotlist[[2]] <- ggplot2::geom_tile()
    plotlist[[3]] <- ggplot2::scale_fill_gradient(low = "white", high = "green")
  }

  p <- p + plotlist
  p
}
