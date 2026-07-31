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
#' @param chisq Should  results of a chi square test be shown.
#' @param ... Arguments to pass on. Currently accepts "title"
#' as the graph title.
#' @export
plot.datawizard_crosstab <- function(x, y, chisq = TRUE, ...) {
  proportion_type <- attr(x, "proportions")
  ylabel <- strsplit(attr(x, "varname"), "$", fixed = "true")[[1]][2]
  if (!is.null(attr(x, "by"))) {
    xlabel <- strsplit(attr(x, "by"), "$", fixed = "true")[[1]][2]
  } else {
    xlabel <- ""
  }
  # Need the levels to maintain the ordering
  xlevels <- names(x)[-1]
  xlevels <- xlevels[xlevels != "NA"]
  ylevels <- levels(x[[1]])

  if (is.null(proportion_type)) {
    x_long <- datawizard::data_to_long(
      x,
      names_to = "x_var",
      rows_to = "y_var",
      select = names(x)[-1]
    )
  } else {
    x_long <- attr(x, "prop_table") |>
      datawizard::data_to_long(rows_to = "y_var", names_to = "x_var")
  }
  x_long |>
    data_filter(!is.na(y_var)) |>
    data_filter(!is.na(x_var)) |>
    data_filter(y_var != "NA") |>
    data_filter(x_var != "NA") -> x_long

  x_long$x_var <- factor(
    x_long$x_var,
    levels = xlevels,
    ordered = TRUE
  )
  x_long$y_var <- factor(x_long$y_var, levels = ylevels, ordered = TRUE)

  p <- ggplot2::ggplot(x_long)
  plotlist <- list()
  if (is.null(proportion_type)) {
    # Plain numbers
    plotlist[[1]] <- ggplot2::aes(
      x = .data$x_var,
      y = .data[[attr(x, "varname")]],
      fill = value
    )
    plotlist[[2]] <- ggplot2::geom_tile()
    plotlist[[3]] <- ggplot2::scale_fill_gradient()
    plotlist[[4]] <- ggplot2::geom_text(
      ggplot2::aes(label = value),
      color = "white"
    )
    plotlist[[5]] <- ggplot2::labs(
      title = paste0(xlabel, " by ", ylabel),
      x = xlabel,
      y = ylabel
    )
    plotlist[[6]] <- ggplot2::coord_fixed()
    plotlist[[7]] <- guides(fill = FALSE)
  } else if (proportion_type == "row") {
    #row percents are horizontal
    plotlist[[1]] <- ggplot2::aes(
      x = .data$y_var,
      y = .data$value,
      fill = .data$x_var
    )
    plotlist[[2]] <- ggplot2::geom_col()
    plotlist[[3]] <- ggplot2::coord_flip()
    plotlist[[5]] <- ggplot2::labs(
      title = paste0(xlabel, " by ", ylabel),
      x = ylabel,
      y = xlabel
    )
  } else if (proportion_type == "column") {
    x_long$y_var <- factor(x_long$y_var, levels = ylevels, ordered = TRUE)
    # column percents are vertical
    plotlist[[1]] <- ggplot2::aes(
      x = .data$x_var,
      y = .data$value,
      fill = .data$y_var
    )
    plotlist[[2]] <- ggplot2::geom_col()
    plotlist[[3]] <- ggplot2::labs(
      title = paste0(ylabel, " by ", xlabel),
      x = xlabel,
      y = ylabel
    )
  } else if (proportion_type == "full") {
    x_long$y_var <- factor(x_long$y_var, levels = ylevels, ordered = TRUE)

    # full percents
    plotlist[[1]] <- ggplot2::aes(
      y = .data$y_var,
      x = .data$x_var,
      width = 1.8 * sqrt(.data$value),
      height = 1.8 * sqrt(.data$value),
      fill = interaction(.data$x_var, .data$y_var)
    )

    plotlist[[2]] <- ggplot2::geom_rect(color = "black", show.legend = FALSE)
    plotlist[[3]] <- ggplot2::geom_text(ggplot2::aes(
      label = paste0(100 * round(.data$value, 2), "%")
    ))

    plotlist[[4]] <- ggplot2::coord_fixed()

    plotlist[[5]] <- ggplot2::scale_y_discrete(
      limits = levels(x_long$x_var),
      drop = FALSE
    )
    plotlist[[6]] <- ggplot2::scale_x_discrete(
      drop = FALSE
    )
    plotlist[[7]] <- ggplot2::labs(
      title = paste0(xlabel, " by ", ylabel),
      x = xlabel,
      y = ylabel
    )
  }

  if (chisq == TRUE) {
    chi2 <- data_chisq(x)

    caption <-
      paste(
        chi2$method,
        "\n",
        "Chi square = ",
        round(chi2$statistic, 1),
        ", Degrees of freedom = ",
        chi2$parameter,
        "\n",
        "p value: ",
        ifelse(chi2$p.value < .001, "<.001", chi2$p.value),
        "\n"
      )
    plotlist[[6]] <- ggplot2::labs(caption = caption)
  }

  p <- p + plotlist

  if (!is.null(attr(x, "df"))) {
    return(p)
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
