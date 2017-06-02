library(tidyverse)
library(nycflights13)

flights %>%
  group_by(origin)

flights %>%
  group_by(origin) %>%
  summarize(mean(dep_delay))

flights %>%
  group_by(origin) %>%
  summarize(mean(dep_delay, na.rm = TRUE))

flights %>%
  group_by(tailnum) %>%
  summarize(sum(distance))


flights %>%
  group_by(tailnum) %>%
  summarize(sum(distance)) %>%
  ungroup

flights %>%
  group_by(carrier) %>%
  summarize(n()) %>%
  ungroup

flights %>%
  count(carrier)

flights %>%
  group_by(tailnum) %>%
  summarize(total_mileage = sum(distance)) %>%
  ungroup

flights %>%
  group_by(carrier) %>%
  summarize(sum(na.rm = TRUE)) %>%
  ungroup

flights %>%
  summarize(mean(dep_time))


flights %>%
  summarize(mean(dep_time, na.rm = TRUE))

flights %>%
  group_by(year, month, day) %>%
  summarize(departed = sum(!is.na(dep_time)))
