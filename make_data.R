#library(tidyverse)
library(tidyverse)
library(dataRetrieval)
library(shiny)
library(bslib)
library(reactable)

siteNo <- "08170000"
pCode <- "00060"
start.date <- Sys.Date()-6
end.date <- Sys.Date()-1

sm <- readNWISdv(siteNumbers = siteNo,
                 parameterCd = pCode,
                 startDate = start.date,
                 endDate = end.date)

date_seq<-as_tibble(seq(as.Date(start.date),by="day",length.out=7)) %>%
  set_names("Date") %>%
  left_join(sm) %>%
  set_names(c("Date", "agency", "site_no","discharge","qualifier"))

saveRDS(date_seq,"likes.rds")









