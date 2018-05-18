library(tidyverse)
library(rex)


gsub("^.*[(]([^)]+)[)].*$", "\\1", "abcdef(x)op")

rx <- rex(
  start,
  zero_or_more(any),
  "(",
  capture(
    one_or_more(except(")"))
  ),
  ")",
  zero_or_more(any),
  end
)

substitutes("abcdef(x)op", rx, "\\1")
