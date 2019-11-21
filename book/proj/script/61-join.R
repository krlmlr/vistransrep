### <No caption defined>

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# airlines contain detailed information for each airline
# (in this case only the name)
airlines

# flights can be augmented with this detailed information
flights %>%
  left_join(airlines) %>%
  select(dep_time, carrier, name)

# for "production code", always indicate the columns to join by
flights %>%
  left_join(airlines, by = "carrier") %>%
  select(dep_time, carrier, name)

# airlines contain detailed information for each airport
airports

try(
  flights %>%
    left_join(airports)
)

# in this case, explicit "by" columns are required
flights %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

# what about the NA name?
airports %>%
  filter(faa == "BQN")

# left vs. inner vs. outer joins control what happens in case of mismatches
flights %>%
  inner_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

# before joining, prepare the RHS table(s)
origin_airports <-
  airports %>%
  select(origin = faa, origin_name = name)

origin_airports

dest_airports <-
  airports %>%
  select(dest = faa, dest_name = name)

dest_airports

# much easier with the prepared tables
flights %>%
  left_join(origin_airports) %>%
  left_join(dest_airports) %>%
  select(origin, origin_name, dest, dest_name)

# "by" still recommended
flights %>%
  left_join(origin_airports, by = "origin") %>%
  left_join(dest_airports, by = "dest") %>%
  select(origin, origin_name, dest, dest_name)

# either LHS or RHS should have a key as part of "by"
airports %>%
  count(faa)

airports %>%
  count(faa) %>%
  count(n)

# create artificial dataset where airport is not a key
dup_airports <-
  bind_rows(airports, sample_n(airports, 100))

dup_airports %>%
  count(faa)

dup_airports %>%
  count(faa) %>%
  count(n)

# what happens if not key?
flights %>%
  left_join(dup_airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

flights

# why is the following not a key?
weather

weather %>%
  count(origin, year, month, day, hour) %>%
  count(n)

weather %>%
  count(origin, year, month, day, hour) %>%
  add_count(n) %>%
  filter(n > 1)
