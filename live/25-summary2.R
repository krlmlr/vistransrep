library(tidyverse)
library(nycflights13)

flights %>%
  count()

flights %>%
  count(origin, dest)

flights %>%
  count(origin, dest) %>%
  View()

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n()) %>%
  ungroup()

flights %>%
  summarize(n = n())

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n())

flights %>%
  group_by(origin, dest)

flights %>%
  group_by(origin, dest) %>%
  ungroup()

flights %>%
  group_by(origin, dest) %>%
  summarize(n = n()) %>%
  ungroup()


flights %>%
  group_by(origin, dest) %>%
  summarize(mean_dep_delay = mean(dep_delay)) %>%
  ungroup()

flights %>%
  group_by(origin, dest) %>%
  summarize(
    mean_dep_delay = mean(dep_delay, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  group_by(origin, dest) %>%
  summarize(
    mean_dep_delay = mean(dep_delay, na.rm = TRUE)
  ) %>%
  ungroup() %>%
  arrange(mean_dep_delay)


flights %>%
  group_by(origin, dest) %>%
  summarize(
    mean(dep_delay, na.rm = TRUE)
  ) %>%
  ungroup()
