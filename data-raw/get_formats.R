library(dplyr)
library(here)


read_input_statements <- function(filename) {

     readLines(filename, encoding="latin1") -> inputs
     inputs_lc <- inputs |> tolower() |> trimws()

     formatdeffirst <- which(inputs_lc %in%
                               c("proc format library=&formatcat;",
                                 "proc format library = &formatcat;"
                               )
                             ) + 1
     formatdeflast <- which(inputs_lc == "data &dsn.;") - 3

     formats <- inputs[formatdeffirst:formatdeflast]

     formatdetails <- read.delim(text = formats,
                                 header = FALSE,
                                 sep = "\t",
                                 col.names = c("format_name", "value"))

     formatdetails |>
          dplyr::mutate(format_name = trimws(substr(format_name, 6, nchar(format_name) )),
                 format_name = ifelse(format_name == "", NA, format_name)) |>
          tidyr::fill(format_name, .direction = "down") |>
          tidyr::separate_wider_delim(cols=value,
                               names = c("nvalue", "label"),
                               delim = "=",
                               too_many = "merge",
                               too_few = "align_end"
          ) |>
          dplyr::mutate(label = ifelse(endsWith(label, ";"),
                                stringr::str_sub(label, 1, -2),label   ),
                        label = trimws(label)
                        )->
          format_details

      format_details
}

# Create the list of files in the correct order
rssnumbers <- 1:7
rssdata_sets <- paste0("rss", rssnumbers)
format_files_dir <-"data-raw/inputstatements"
format_files <- dir(here(format_files_dir))
format_files <- file.path(format_files_dir,  format_files)
format_files <- c(format_files[7],
                             format_files[1:3],
                  format_files[6],
                  format_files[4:5])




# x is a df$var
applylabels <- function(x, format_list) {
     format_to_use <- attr(x, "format.sas")
     if (!is.null(format_to_use)){
        format_list <- format_list |>
             dplyr::filter(format_name == format_to_use)

        value <- format_list |> pull(nvalue)
        value <- value[!is.na(value)]
        label <- format_list |> pull(label)
        label <- label[label != ""]
        fmtname <- format_list |> pull(format_name)
        if (length(value) != length(label)) {
             print(fmtname)
             print(value)
             print(label)
        } else {
           factor(x, levels = value, labels = label)
        }
     }
}






remove0length <- function(old, number){
     #old <-
      #    lapply(old[,names(old)],  applylabels, format_details[[number]])
     leng <- lapply(old, length)
     old[leng != 0] -> old
     new <- old |> as.data.frame()
     new
}

format_details <- lapply(format_files, read_input_statements)

rss1_raw[rss1_raw < 0] <- NA
rss2_raw[rss2_raw < 0] <- NA
rss3_raw[rss3_raw < 0] <- NA
rss4_raw[rss4_raw < 0] <- NA
rss5_raw[rss5_raw < 0] <- NA
rss6_raw[rss6_raw < 0] <- NA
rss7_raw[rss7_raw < 0] <- NA

# Make this an internal function
# need to do this for each
  rss1_raw <- lapply(rss1_raw[,names(rss1_raw)],
                         applylabels,
                         format_details[[1]])


   rss1 <- remove0length(rss1_raw, 1) |> as.data.frame() |> droplevels()
# 2
   rss2_raw <- lapply(rss2_raw[names(rss2_raw)],
                      applylabels,
                      format_details[[2]])

   rss2 <- remove0length(rss2_raw, 2) |> as.data.frame()  |> droplevels()

   # 3
   rss3_raw <- lapply(rss3_raw[names(rss3_raw)],
                      applylabels,
                      format_details[[3]])

   rss3 <- remove0length(rss3_raw, 3) |> as.data.frame()  |> droplevels()

   # 4
   rss4_raw <- lapply(rss4_raw[names(rss4_raw)],
                      applylabels,
                      format_details[[4]])

   rss4 <- remove0length(rss4_raw, 4) |> as.data.frame()  |> droplevels()

   # 5
   rss5_raw <- lapply(rss5_raw[names(rss5_raw)],
                      applylabels,
                      format_details[[5]])

   rss5 <- remove0length(rss5_raw, 5) |> as.data.frame()  |> droplevels()

   # 6
   rss6_raw <- lapply(rss6_raw[names(rss6_raw)],
                      applylabels,
                      format_details[[6]])

   rss6 <- remove0length(rss6_raw, 6) |> as.data.frame()  |> droplevels()

   # 7
   rss7_raw <- rss7_raw |> dplyr::select(-VET_COMBAT)
   rss7_raw <- lapply(rss7_raw[names(rss7_raw)],
                      applylabels,
                      format_details[[7]])

   rss7 <- remove0length(rss7_raw, 7) |> as.data.frame()  |> droplevels()

# Save the datasets
   save(rss1, file=here("data/rss1.rda"))
   save(rss2, file=here("data/rss2.rda"))
   save(rss3, file=here("data/rss3.rda"))
   save(rss4, file=here("data/rss4.rda"))
   save(rss5, file=here("data/rss5.rda"))
   save(rss6, file=here("data/rss6.rda"))
   save(rss7, file=here("data/rss7.rda"))
