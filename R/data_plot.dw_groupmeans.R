#' Plot group means
#'
#' @param x  A dw_groupmeans data frame.
#' @param title A string to be used as the graph title
#' @param caption Logical indicating if a caption summarizing
#' the anova results should be included.
#' @param ci Logical indicating if the confidence interval
#' should be shown.
#'
#' @export

data_plot.dw_groupmeans <- function(
  x,
  title = NULL,
  caption = TRUE,
  ci = TRUE
) {
  if (identical(class(x), c("dw_groupmeans_list", "list"))) {
    print("X")
    data_plot.dw_groupmeans_list(
      x = x,
      title = title,
      caption = caption,
      ci = ci
    )
  }
  if (caption == TRUE) {
    caption <- paste0(
      "\nAnova: R2=",
      insight::format_value(attributes(x[[1]])$r2, digits = 3),
      "; adj.R2=",
      insight::format_value(attributes(x[[1]])$adj.r2, digits = 3),
      "; F=",
      insight::format_value(attributes(x[[1]])$fstat, digits = 3),
      "; ",
      insight::format_p(attributes(x[[1]])$p.value, whitespace = FALSE),
      "\n"
    )
  }
  x |>
    datawizard::data_filter(Category != "Total") |>
    ggplot2::ggplot(aes(x = Category, y = Mean)) +
    geom_point() +
    labs(title = title, caption = caption) -> p
  if (ci == TRUE) {
    return(
      p +
        geom_linerange(aes(ymin = CI_low, ymax = CI_high))
    )
  }
  p
}


#' function to handle lists
data_plot.dw_groupmeans_list <- function(
  x,
  title = NULL,
  caption = TRUE,
  ci = TRUE
) {
  lapply(x, plot.dw_groupmeans, title = title, caption = caption, ci = ci)
}
