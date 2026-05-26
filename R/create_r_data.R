library(haven)
library(here)
library(tidyr)
library(dplyr)
library(stringr)
# Import and save data
read_sas(here("sasdata/rss1_puf_t1.sas7bdat")) -> rss1
read_sas(here("sasdata/rss2_puf_t1.sas7bdat")) -> rss2
read_sas(here("sasdata/rss3_puf.sas7bdat")) -> rss3
read_sas(here("sasdata/rss4_puf.sas7bdat")) -> rss4
read_sas(here("sasdata/rss5_puf.sas7bdat")) -> rss5
read_sas(here("sasdata/rss6_puf.sas7bdat")) -> rss6
read_sas(here("sasdata/rss7_puf.sas7bdat")) -> rss7

# rss1[rss1 < 0] <- NA
# rss2[rss2 < 0] <- NA
# rss3[rss3 < 0] <- NA
# rss3[rss3 < 0] <- NA
# rss4[rss4 < 0] <- NA
# rss5[rss5 < 0] <- NA
# rss6[rss6 < 0] <- NA
rss1_raw <- rss1
rss2_raw <- rss2
rss3_raw <- rss3
rss4_raw <- rss4
rss5_raw <- rss5
rss6_raw <- rss6
rss7_raw <- rss7

save(rss1_raw, file=here("data/rss1_raw.rda"))
save(rss2_raw, file=here("data/rss2_raw.rda"))
save(rss3_raw, file=here("data/rss3_raw.rda"))
save(rss4_raw, file=here("data/rss4_raw.rda"))
save(rss5_raw, file=here("data/rss5_raw.rda"))
save(rss6_raw, file=here("data/rss6_raw.rda"))
save(rss7_raw, file=here("data/rss7_raw.rda"))

##  now we want to look at the input statements

files_inputs <-
     c("rss1" = "sasdata/inputstatements/sas-input-statements-rss1.sas",
       "rss2" = "sasdata/inputstatements/rss2_puf_t1_input_program.sas",
       "rss3" = "sasdata/inputstatements/RSS3-PUF-Input-Program_1.sas",
       "rss4" = "sasdata/inputstatements/RSS4-PUF-Input-Program.sas",
       "rss5" = "sasdata/inputstatements/rssS5-PUF-Input-Program.sas",
       "rss6" = "sasdata/inputstatements/RSS6 PUF Input Program.sas",
       "rss7" = "sasdata/inputstatements/RSS7 PUF Input Program.sas"

       )
save(files_inputs, file = "data/files_inputs.rda")
