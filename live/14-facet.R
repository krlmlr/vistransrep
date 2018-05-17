library(tidyverse)

ggplot(data = mpg) +
  geom_point(aes(
    x = displ,
    y = hwy
  )) +
  facet_wrap(~drv)

ggplot(data = mpg) +
  geom_point(aes(
    x = displ,
    y = hwy
  )) +
  facet_grid(drv ~ class)


ggplot(data = mpg) +
  geom_point(aes(
    x = displ,
    y = hwy
  )) +
  facet_grid(drv ~ class, scales = "free")



