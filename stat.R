library(tidyverse)
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_jitter() +
  geom_smooth(aes(color = class), method = "lm")


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_jitter() +
  stat_smooth(aes(color = class), method = "lm")

x <- stat_smooth(aes(color = class), method = "lm")

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_jitter() +
  x


ggplot(mpg) +
  geom_bar(aes(x = drv))

ggplot(mpg) +
  geom_histogram(aes(hwy))
