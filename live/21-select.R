library(tidyverse)
library(nycflights13)

flights %>%
  select(year, month, day)

# flights %>%
#   select(year & month & day)

flights %>%
  select(-year, -month, -day)

flights %>%
  select(year:day)

flights %>%
  select(-year:-day)

flights %>%
  select(time_hour, everything())

flights %>%
  select(starts_with("dep_"))

flights %>%
  select(ends_with("_delay"))

flights %>%
  select(contains("la"))

flights %>%
  select(1, 2, 3)

flights %>%
  select(1:3)

flights %>%
  select(-1:-3)

flights %>%
  select(
    `Departure delay` = dep_delay,
    `Arrival delay` = arr_delay,
  )

flights %>%
  rename(
    `Departure delay` = dep_delay,
    `Arrival delay` = arr_delay,
  )
