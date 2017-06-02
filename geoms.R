library(tidyverse)
theme_set(theme_bw())

mpg_plot <- ggplot(data = mpg)

mpg_plot +
  geom_jitter(mapping = aes(x = hwy, y = displ))

mpg_plot +
  geom_bin2d(mapping = aes(x = hwy, y = displ))

mpg_plot +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  geom_rug()

ggplot(data = mpg) +
  geom_jitter(mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv))

ggplot(data = mpg) +
  geom_jitter(mapping = aes(x = displ, y = hwy, color = class)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = class))

ggplot(
  mpg,
  aes(x = displ, y = hwy)
) +
  geom_point(
    alpha = 0.3,
    position = "jitter"
  ) +
  geom_rug(
    alpha = 0.3,
    position = "jitter"
  )

ggplot(mpg) +
  geom_jitter(aes(displ, cty), color = "red") +
  geom_jitter(aes(displ, hwy), color = "green")
