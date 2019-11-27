### Themes

library(tidyverse)

# Base plot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  theme_grey()

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

# Occasionally useful: legend at the bottom
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_bw() +
  theme(legend.position = "bottom")

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

# predefined themes available, e.g. in ggpubr package
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  ggpubr::theme_pubr()
