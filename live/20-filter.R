library(tidyverse)
library(nycflights13)

# Alias
f <- flights

filter(flights, month == 3)
filter(flights, carrier != "UA") # <> won't work
filter(flights, month <= 2)
filter(flights, between(dep_time, 800, 1200))

filter(flights, near(..., 0))

filter(flights, month %in% c(12, 1, 2))


flights_arr_before_10 <-
  filter(flights, arr_time < 1000)
flights_arr_before_10

(flights_arr_before_10 <-
  filter(flights, arr_time < 1000))

# The pipe

filter(flights, month %in% c(12, 1, 2))

flights %>%
  filter(month %in% c(12, 1, 2)) %>%
  filter(carrier != "UA")

filter(
  filter(
    flights,
    month %in% c(12, 1, 2)
  ),
  carrier != "UA"
)

.Last.value

flights <-
  flights %>%
  filter(carrier == "UA")



