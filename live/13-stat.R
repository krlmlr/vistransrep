library(tidyverse)


ggplot(
  data = mpg,
  aes(
    x = displ
  )
) +
  geom_histogram(binwidth = .25)

ggplot(
  data = mpg,
  aes(
    x = class
  )
) +
  geom_bar()


ggplot(
  data = mpg,
  aes(
    x = displ
  )
) +
  geom_histogram(breaks = c(2, 2.5, 3, 5, 7))


ggplot(
  data = mpg,
  aes(
    x = displ
  )
) +
  stat_bin(
    breaks = c(2, 2.5, 3, 5, 7)
  )
