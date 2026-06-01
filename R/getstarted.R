

library(usethis)
library(here)
#' getstarted
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
     dir.create(here::here("srop2026/rmarkdown"))
     dir.create(here::here("srop2026/data"))
     dir.create(here::here("srop2026/R"))
     usethis::use_template("rmarkdown/your-project/skeleton/skeleton.Rmd",
               package = "icorp26",
               save_as =
           here::here("srop2026/rmarkdown/your-project.Rmd"))
     useths::use_template("rmarkdown/first_analysis/skeleton/skeleton.Rmd",
                          package = "icorp26",
         save_as =
           here::here("srop2026/rmarkdown/first_analysis.Rmd"))
}
