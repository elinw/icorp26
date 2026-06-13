

library(usethis)
library(here)
#' Create a project and some starting files
#'
#' Creates a project with a few files to get started
#' @param project    The name of the folder to be used which
#'                   is also the name of the project.
#'                   By default, srop2026. You should only
#'                   run this once for a project.
#'
#' @export
getstarted <-function(project = "srop2026" ){
     usethis::create_project(path = project, open = FALSE)
     if (!dir.exists(here::here("srop2026/rmarkdown"))){
          dir.create(here::here("srop2026/rmarkdown"))
     }
     if (!dir.exists("srop2026/data")){
         dir.create(here::here("srop2026/data"))
     }
     if (!dir.exists(here::here("srop2026/R"))){
           dir.create(here::here("srop2026/R"))
     }
     if (!file.exists("srop2026/rmarkdown/your-project.Rmd")) {
       rmarkdown::draft("srop2026/rmarkdown/your-project.Rmd",
               template = "your-project",
               package = "icorp26",
               edit = FALSE,
         )
     }
     if (!file.exists("srop2026/rmarkdown/first_analysis.Rmd")) {

       rmarkdown::draft("srop2026/rmarkdown/first_analysis.Rmd",
               package = "icorp26",
               template = "first_analysis",
               edit = FALSE
         )
     }
     if (!file.exists("srop2026/rmarkdown/poster.Rmd")) {

          rmarkdown::draft("srop2026/rmarkdown/poster.Rmd",
                           package = "icorp26",
                           template = "poster",
                           edit = FALSE
          )
     }
}

#' create_starter
#'
#' Creates a starter rmarkdown file
#'
#' @param filename Name of the file to create
#'
#' @export
create_starter <- function (filename) {
     rmarkdown::draft(here::here("rmarkdown",
                                filename),
                      package = "icorp26",
                      template = "starter")

}
