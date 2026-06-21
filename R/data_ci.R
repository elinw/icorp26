#' Plot confidence intervals for group means
#'
#' @param x  A dw_groupmeans data frame.
#' @param xlab A string to use for labelling the x axis
#' @param ylab A string to use for labelling the y axis
#' @param title A string to be used as the graph title
#'
#' @export
data_groupmeans_ci <- function(
  x,
  xlab = NULL,
  ylab = NULL,
  title = NULL
) {
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
  x |>
    data_filter(Category != "Total") |>
    ggplot(aes(x = Category, y = Mean)) +
    geom_point() +
    geom_linerange(aes(ymin = CI_low, ymax = CI_high)) +
    labs(title = title, caption = caption)
}
