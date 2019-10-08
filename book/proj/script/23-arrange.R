### Sort rows: `dplyr::arrange()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# simple arrange
flights %>%
  arrange(dep_time)

# arranging two means first the first then within duplicates the second
flights %>%
  arrange(dep_time, dep_delay)

# view
flights %>%
  arrange(dep_time, dep_delay) %>%
  view()

# filter before arranging two
flights %>%
  filter(dep_time < 600) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# two filters before arranging two
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# arrange with regard to function of variable
flights %>%
  filter(month == 4) %>%
  arrange(is.na(dep_time)) %>%
  view()

# non-NAs first
flights %>%
  filter(month == 4) %>%
  arrange(!is.na(dep_time))

# with less data, 1 April
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(!is.na(dep_time)) %>%
  view()

# two filters then arrange according arr_time
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(arr_time) %>%
  view()

# Descending
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(-arr_time) %>%
  view()

# Descending 2
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(desc(arr_time)) %>%
  view()

# Ascending and descending
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(dep_time, desc(arr_time)) %>%
  view()
