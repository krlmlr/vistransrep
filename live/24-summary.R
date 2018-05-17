library(tidyverse)
library(nycflights13)

flights %>%
  summarize(n = n())

flights %>%
  group_by(origin) %>%
  summarize(n = n())

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n())

flights %>%
  group_by(origin) %>%
  summarize(mean(dep_delay))

flights %>%
  group_by(origin) %>%
  summarize(mean(dep_delay, na.rm = TRUE))

flights %>%
  filter(!is.na(dep_delay)) %>%
  group_by(origin) %>%
  summarize(mean(dep_delay))

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n()) %>%
  summarize(sd_n = sd(n))
