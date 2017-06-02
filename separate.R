library(tidyverse)

x <- tribble(
  ~id, ~key, ~values,
    1,  "a",  "1_2",
    2,  "b",  "3_45"
)

x %>%
  separate(values, c("m1", "m2"))
