library(tidyverse)
library(nycflights13)

flights %>%
  mutate(dep_hour = dep_time %/% 100) %>%
  select(dep_hour, everything())

flights %>%
  mutate(
    dep_hour = dep_time %/% 100,
    dep_minute = dep_time %% 100
  ) %>%
  select(dep_hour, dep_minute, everything())

flights %>%
  mutate(
    dep_delay_dev = dep_delay - mean(dep_delay, na.rm = TRUE)
  ) %>%
  select(20, everything())


flights %>%
  mutate(
    lead_arr_time = lead(arr_time)
  ) %>%
  select(20, everything())

flights %>%
  mutate(
    lead_arr_time = lag(arr_time, 3)
  ) %>%
  select(20, everything())

flights %>%
  mutate(
    cum_dep_delay = cumsum(dep_delay)
  ) %>%
  select(20, everything())

flights %>%
  filter(is.na(arr_time))

flights %>%
  mutate(arr_time = recode(arr_time, .default = arr_time, .missing = -1L)) %>%
  filter(is.na(arr_time))

flights %>%
  mutate(arr_time = recode(arr_time, .default = as.numeric(arr_time), .missing = -1L)) %>%
  filter(is.na(arr_time))

flights %>%
  mutate(arr_time = if_else(is.na(arr_time), -1L, arr_time)) %>%
  filter(is.na(arr_time))

flights %>%
  mutate(arr_time = if_else(is.na(arr_time), -1, as.numeric(arr_time))) %>%
  filter(is.na(arr_time))

flights %>%
  transmute(
    arr_delay,
    dep_delay,
    time_lost = arr_delay - dep_delay
  )
