library(tidyverse)
library(nycflights13)

flights %>%
  filter(distance < 300) %>%
  count(dest, carrier) %>%
  left_join(airlines, by = "carrier") %>%
  left_join(airports, by = c("dest" = "faa"))

airports_renamed <-
  airports %>%
  rename(dest = faa)

flights %>%
  filter(distance < 300) %>%
  count(dest, carrier) %>%
  left_join(airlines, by = "carrier") %>%
  left_join(airports_renamed, by = "dest")

tibble(a = 1:3, b = 1:3) %>%
  summarize(all(a == b))
