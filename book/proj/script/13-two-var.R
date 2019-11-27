### xxx

library(tidyverse)

ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()

ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

ggplot(mpg, aes(x = class, y = manufacturer)) +
  geom_jitter()
