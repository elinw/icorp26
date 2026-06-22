#' Plot confidence intervals for group means
#'
#' @param x  A dw_groupmeans data frame.
#' @param title A string to be used as the graph title
#' @param caption Logical indicating if a caption summarizing
#' the anova results should be included.
#'
#' @export

plot.dw_groupmeans <- function(x, title = NULL, caption = TRUE) {
  if (caption == TRUE) {
    caption <- paste0(
      "\nAnova: R2=",
      insight::format_value(attributes(x)$r2, digits = 3),
      "; adj.R2=",
      insight::format_value(attributes(x)$adj.r2, digits = 3),
      "; F=",
      insight::format_value(attributes(x)$fstat, digits = 3),
      "; ",
      insight::format_p(attributes(x)$p.value, whitespace = FALSE),
      "\n"
    )
  }
  x |>
    data_filter(Category != "Total") |>
    ggplot(aes(x = Category, y = Mean)) +
    geom_point() +
    geom_linerange(aes(ymin = CI_low, ymax = CI_high)) +
    labs(title = title, caption = caption)
}
