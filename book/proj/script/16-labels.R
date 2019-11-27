### Labels

library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "A")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "drv")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(aes(label = drv))

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_text(aes(label = drv))

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = "blue") +
  geom_text(aes(label = drv), size = 10)
