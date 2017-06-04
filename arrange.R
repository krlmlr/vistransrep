library(tidyverse)
library(nycflights13)

flights %>%
  arrange(arr_delay) %>%
  View

flights %>%
  arrange(month, day, arr_delay)
