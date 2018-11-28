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
rx

substitutes("abcdef(x)op", rx, "\\1")
substitutes("abcde234234f(12x34)sadfgop", rx, "\\1")
