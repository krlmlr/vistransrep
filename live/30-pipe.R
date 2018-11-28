library(tidyverse)
library(nycflights13)

# This script won't run in its entirety!

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n()) %>%
  ungroup()

# Forgotten %>%

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n())
  ungroup()

#

flights %>%
    group_by(origin, dest) %>%
    summarize(n = n())
  ungroup()


brute_mean <- function(x) {
  mean(x, na.rm = TRUE)
}


flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n()) %>%
  summarize(n_distinct_carriers = n()) %>%
  ungroup() %>%
  arrange(desc(n_distinct_carriers))
