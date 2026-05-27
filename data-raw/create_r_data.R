library(haven)
library(here)
library(tidyr)
library(dplyr)
library(stringr)
# Import and save data
read_sas(here("data-raw/rss1_puf_t1.sas7bdat")) -> rss1_raw
read_sas(here("data-raw/rss2_puf_t1.sas7bdat")) -> rss2_raw
read_sas(here("data-raw/rss3_puf.sas7bdat")) -> rss3_raw
read_sas(here("data-raw/rss4_puf.sas7bdat")) -> rss4_raw
read_sas(here("data-raw/rss5_puf.sas7bdat")) -> rss5_raw
read_sas(here("data-raw/rss6_puf.sas7bdat")) -> rss6_raw
read_sas(here("data-raw/rss7_puf.sas7bdat")) -> rss7_raw


save(rss1_raw, file=here("data/rss1_raw.rda"))
save(rss2_raw, file=here("data/rss2_raw.rda"))
save(rss3_raw, file=here("data/rss3_raw.rda"))
save(rss4_raw, file=here("data/rss4_raw.rda"))
save(rss5_raw, file=here("data/rss5_raw.rda"))
save(rss6_raw, file=here("data/rss6_raw.rda"))
save(rss7_raw, file=here("data/rss7_raw.rda"))

##  now we want to look at the input statements

files_inputs <-
     c("rss1" = "data-raw/inputstatements/sas-input-statements-rss1.sas",
       "rss2" = "data-raw/inputstatements/rss2_puf_t1_input_program.sas",
       "rss3" = "data-raw/inputstatements/RSS3-PUF-Input-Program_1.sas",
       "rss4" = "data-raw/inputstatements/RSS4-PUF-Input-Program.sas",
       "rss5" = "data-raw/inputstatements/rssS5-PUF-Input-Program.sas",
       "rss6" = "data-raw/inputstatements/RSS6 PUF Input Program.sas",
       "rss7" = "data-raw/inputstatements/RSS7 PUF Input Program.sas"

       )
save(files_inputs, file = "data-raw/files_inputs.rda")
