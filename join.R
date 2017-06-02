library(tidyverse)
library(nycflights13)

flights %>%
  left_join(airlines)

flights %>%
  left_join(airlines, by = "carrier")

flights %>%
  left_join(airlines, by = "carrier") %>%
  filter(is.na(name))


flights %>%
  left_join(airlines, by = "carrier") %>%
  View
