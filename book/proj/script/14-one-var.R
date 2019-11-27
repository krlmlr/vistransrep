### One variable plots

library(tidyverse)

ggplot(mpg, aes(x = hwy)) +
  geom_histogram()

ggplot(mpg, aes(x = hwy)) +
  geom_density()

ggplot(mpg, aes(fl)) +
  geom_bar()
