library(here)
library(tidyverse)
library(nycflights13)

ewr_flights <-
  flights %>%
  filter(origin == "EWR")

saveRDS(ewr_flights, here("prepared_data/ewr_flights.rds"))
