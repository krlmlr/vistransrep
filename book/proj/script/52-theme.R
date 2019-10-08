### Plotting: themes

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Base plot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  theme_void()

# bw-theme
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  theme_bw()

# Data can have color in bw-theme
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_bw()

# tweak aspects of theme with theme()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_bw() +
  theme(legend.position = "bottom")

# theme_()-functions overwrite theme() if called afterwards
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme(legend.position = "bottom") +
  theme_bw()

# first param of theme_()-functions is base_size
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_bw(16)
