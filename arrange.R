library(tidyverse)
library(nycflights13)

flights %>%
  arrange(arr_delay) %>%
  View

flights %>%
  arrange(
