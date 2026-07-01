#' Plot method for crosstabs
#'
#' The `plot()` method for `dw_crosstabs` objects.
#' These objects are lists of `dw_crosstab`objects.
#'
#' @details
#' There is no standard way to plot a cross tabulation.
#' For these plot functions the format respond to the value
#' selected for the proportions argument of `data_tabulate()`
#' from the `datawizard` package. Those options are "row" "column" and "full"
#' along with NULL for no percentages (numbers only).
#'
#' For "row" and "column" percentages, stacked bar plots of the respective
#' row and colum npercentages are displayed. For row percentages the bars
#' display horizontally
#'
#' For tables with no percentage--raw numbers only--a heat map
#' describes the number of observations in each cell.
#'
#' For tables with "all" percents, i.e. with values representing
#' the percentage of the whole sample the graph is a mosaic
#' plot where the size and color represent the proportion of the
#' whole sample falls in each cell.
#'
#' To remove missing values from the plots, the data_tabulate
#' object should be created with the `remove_na` argument of TRUE.
#'
#' The plots can be modified using ggplot2 syntax and options.
#'
#' @param x  A datawizard_crosstabs object`.
#' @param y  Not currently used
#' @param ... Not currently used
#' @export
plot.datawizard_crosstab <- function(x, y, ...) {
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
    plotlist[[1]] <- ggplot2::aes(
      x = .data$row_var,
      y = .data$name,
      fill = value
    )
    plotlist[[2]] <- ggplot2::geom_tile()
    plotlist[[3]] <- ggplot2::scale_fill_gradient(
      low = "white",
      high = "green"
    )
  } else if (proportion_type == "row") {
    plotlist[[1]] <- ggplot2::aes(
      x = .data$row_var,
      y = .data$value,
      fill = name
    )
    plotlist[[2]] <- ggplot2::geom_col()
    plotlist[[3]] <- ggplot2::coord_flip()
  } else if (proportion_type == "column") {
    plotlist[[1]] <- ggplot2::aes(
      x = .data$name,
      y = .data$value,
      fill = .data$row_var
    )
    plotlist[[2]] <- ggplot2::geom_col()
  } else if (proportion_type == "full") {
    plotlist[[1]] <- ggplot2::aes(
      x = .data$row_var,
      y = .data$name,
      fill = .data$value
    )
    plotlist[[2]] <- ggplot2::geom_tile()
    plotlist[[3]] <- ggplot2::scale_fill_gradient(
      low = "white",
      high = "green"
    )
  }

  p <- p + plotlist

  if (!is.null(attr(x, "df"))) {
    return(print(p))
  }
  p
}

#' Plot method for crosstabs
#'
#' The `plot()` method for `datawizard_crosstab` objects
#'
#' @param x  An object returned from `datawizard::datawizard_crosstab()`.
#' @param y  Not currently used
#' @param ... Not currently used
#' @export
plot.datawizard_crosstabs <- function(x, y, ...) {
  if (is.null(length(x) | length(x) == 0)) {
    stop("x must be a list of at least length 1")
  }
  if (length(x) == 1) {
    attr(x[[1]], "df") <- TRUE
    return(plot(x[[1]]))
  }
}
