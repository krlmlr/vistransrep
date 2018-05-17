library(tidyverse)
library(nycflights13)

flights %>%
  arrange(dep_time)

flights %>%
  arrange(dep_time, dep_delay)

flights %>%
  arrange(dep_time, -dep_delay)

flights %>%
  arrange(dep_time, desc(dep_delay))

flights %>%
  arrange(dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay) %>%
  filter(dep_delay > 0)
