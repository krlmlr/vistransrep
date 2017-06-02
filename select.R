library(tidyverse)
library(nycflights13)

flights %>%
  select(year, month, day)

flights %>%
  select(year:day)

flights %>%
  select(-arr_time, -arr_delay)

flights %>%
  select(-contains("arr_"))

flights %>%
  select(carrier, everything())

flights %>%
  select(1, 2, 3)

flights %>%
  select(1:3)
