library(tidyverse)

x1 <- tribble(
  ~id, ~m1, ~m2, ~m3,
    1,   0,   2,  -5,
    2,  -1,   3,  -6,
    3,   5,  12,  -7
)

x1 %>%
  gather(measurement_name, val, -id)

x2 <-
  x1 %>%
  gather(measurement_name, val, -id)

x2 %>%
  spread(measurement_name, val)


x2 %>%
  filter(measurement_name %in% c("m1", "m3")) %>%
  spread(measurement_name, val)


x2 %>%
  filter(measurement_name %in% c("m1", "m3") | id != 3) %>%
  spread(measurement_name, val)

