library(tidyverse)

ggplot(mpg) +
  geom_bar(aes(x = class, fill = drv))

ggplot(mpg) +
  geom_bar(
    aes(x = class, fill = drv),
    position = "fill"
  )

ggplot(mpg) +
  geom_bar(
    aes(x = class, fill = drv),
    position = "identity",
    alpha = 0.3
  )

ggplot(mpg) +
  geom_point(
    aes(x = class, colr = drv),
    stat = "count",
    position = "jitter"
  )
