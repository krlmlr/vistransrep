library(tidyverse)

example1 <- read_delim(
  "data/example1.csv",
  ";"
)
example1

example2 <- read_delim(
  "data/example2.csv",
  ";", escape_double = FALSE, comment = "#",
  trim_ws = TRUE
)
example2
View(example2)
