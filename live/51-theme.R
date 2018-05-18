library(tidyverse)
library(ggthemes)

ggplot(
  data = mpg,
  aes(
    x = class,
    fill = trans
  )
) +
  geom_bar() +
  theme_excel()

theme_excel

ggplot(
  data = mpg,
  aes(
    x = class,
    fill = trans
  )
) +
  geom_bar() +
  theme(legend.position = "bottom")


ggplot(
  data = mpg,
  aes(
    x = class,
    fill = trans
  )
) +
  geom_bar() +
  theme_minimal()

ggplot(
  data = mpg,
  aes(
    x = class,
    fill = trans
  )
) +
  geom_bar()

theme_set(theme_minimal())

ggplot(
  data = mpg,
  aes(
    x = class,
    fill = trans
  )
) +
  geom_bar()

theme_bw()
