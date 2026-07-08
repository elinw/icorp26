#' Plot method for crosstabs
#'
#' The `plot()` method for `dw_crosstabs` objects.
#' These objects are lists of `dw_crosstab`objects.
#'
#' @returns A ggplot2 representation of a datawizard
#' cross tabulation.
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
#' the percentage of the whole sample the graph is a variation of a mosaic
#' plot where the size of each rectangle represents the proportion of the
#' whole sample falls in each cell.
#'
#' To remove missing values from the plots, the data_tabulate
#' object should be created with the `remove_na` argument of TRUE.
#'
#' The plots can be modified using ggplot2 syntax and options.
#'
#' @param x  A `datawizard_crosstabs` object.
#' @param y  Not currently used
#' @param ... Arguments to pass on. Currently accepts "title"
#' as the graph title.
#' @export
plot.datawizard_crosstab <- function(x, y, ...) {
  proportion_type <- attr(x, "proportions")
  xlabel <- strsplit(attr(x, "varname"), "$", fixed = "true")[[1]][2]
  if (!is.null(attr(x, "by"))) {
    ylabel <- strsplit(attr(x, "by"), "$", fixed = "true")[[1]][2]
  } else {
    ylabel <- ""
  }

  if (is.null(proportion_type)) {
    x_long <- datawizard::data_to_long(
      x,
      rows_to = "row_var",
      select = names(x)[-1]
    )
    proportion_type <- "none"
  } else {
    x_long <- attr(x, "prop_table") |>
      datawizard::data_to_long(rows_to = "row_var")
  }
  if (is.numeric(x_long$name)) {
    x_long$name <- as.character(x_long$name)
  }
  if (is.numeric(x_long$row_var)) {
    x_long$row_var <- as.character(x_long$row_var)
  }
  p <- ggplot2::ggplot(x_long)
  plotlist <- list()

  plotlist <- switch(
    proportion_type,
    "none" = {
      # Plain numbers
      plotlist[[1]] <- ggplot2::aes(
        x = .data$row_var,
        y = .data$name,
        fill = value
      )
      plotlist[[2]] <- ggplot2::geom_tile()
      plotlist[[3]] <- ggplot2::scale_fill_gradient()
      plotlist[[4]] <- ggplot2::geom_text(
        aes(label = value),
        color = "white"
      )
      plotlist[[5]] <- ggplot2::labs(
        title = paste0(xlabel, " by ", ylabel),
        x = xlabel,
        y = ylabel
      )
      plotlist[[6]] <- ggplot2::coord_fixed()
      plotlist
    },
    "row" = {
      #row percents are horizontal
      plotlist[[1]] <- ggplot2::aes(
        x = .data$row_var,
        y = .data$value,
        fill = name
      )
      plotlist[[2]] <- ggplot2::geom_col()
      plotlist[[3]] <- ggplot2::coord_flip()
      plotlist[[5]] <- ggplot2::labs(
        title = paste0(xlabel, " by ", ylabel),
        x = xlabel,
        y = ylabel
      )
      plotlist
    },
    "column" = {
      # column percents are vertical
      plotlist[[1]] <- ggplot2::aes(
        x = .data$name,
        y = .data$value,
        fill = .data$row_var
      )
      plotlist[[2]] <- ggplot2::geom_col()
      plotlist[[3]] <- ggplot2::labs(
        title = paste0(ylabel, " by ", xlabel),
        x = xlabel,
        y = ylabel
      )
      plotlist
    },
    "full" = {
      # full percents
      plotlist[[1]] <- ggplot2::aes(
        x = .data$row_var,
        y = .data$name,
        width = 1.8 * sqrt(.data$value),
        height = 1.8 * sqrt(.data$value),
        fill = interaction(.data$name, .data$row_var)
      )
      plotlist[[2]] <- ggplot2::geom_rect(color = "black", show.legend = FALSE)
      plotlist[[3]] <- ggplot2::geom_text(aes(
        label = paste0(100 * round(.data$value, 2), "%")
      ))
      plotlist[[4]] <- ggplot2::coord_fixed()
      plotlist[[5]] <- ggplot2::labs(
        title = paste0(xlabel, " by ", ylabel),
        x = xlabel,
        y = ylabel
      )
      plotlist
    }
  )

  p <- p + plotlist

  if (!is.null(attr(x, "df"))) {
    return(print(p))
  }
  p
}

#' Plot method for crosstabs
#'
#' The `plot()` method for `datawizard_crosstab` objects
#' which are lists.
#'
#' @param x  An object returned from `datawizard::datawizard_crosstab()`.
#' @param y  Not currently used
#' @param ... Additional options. a `title` attribute will
#' make an overall title for the graph
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
