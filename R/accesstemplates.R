#' Create basic one variable plots
#'
#' Creates a file that matches the basic plots vignette
#' @param project    The name of the folder to be used which
#'                   is also the name of the project.
#'                   By default, srop2026..
#'
#' @export
basicplots <- function(project = "icorp26") {
  if (!file.exists("srop2026/rmarkdown/simpleplots.Rmd")) {
    rmarkdown::draft(
      "srop2026/rmarkdown/simpleplots.Rmd",
      template = "simpleplots",
      package = "icorp26",
      edit = FALSE,
    )
  }
}

#' Create basic one variable plots
#'
#' Creates a file that matches the basic plots vignette
#' @param project    The name of the folder to be used which
#'                   is also the name of the project.
#'                   By default, srop2026..
#'
#' @export
assignment1 <- function(project = "icorp26") {
  if (!file.exists("srop2026/rmarkdown/assignment1.Rmd")) {
    rmarkdown::draft(
      "srop2026/rmarkdown/assignment1.Rmd",
      template = "assignment1",
      package = "icorp26",
      edit = FALSE,
    )
  }
}

#' create a copy of the ICORP pdf poster file
#'
#' Creates a folder and file with the skeleton file
#' @param poster    The name of the folder to be used which
#'                   is also the name of the file.
#'
#' @export
posterpdf <- function(file) {
  rmarkdown::draft(
    file = file,
    template = "posterdown_latex_icorp",
    package = "posterdownplus",
    create_dir = TRUE,
    edit = FALSE
  )
}
