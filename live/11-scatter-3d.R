library(tidyverse)

ggplot(data = mpg) +
  geom_point(aes(
    x = displ,
    y = hwy,
    color = trans
  ))

ggplot(data = mpg) +
  geom_point(aes(
    x = displ,
    y = hwy,
    color = trans,
    size = cyl
  ))

ggplot(data = mpg) +
  geom_point(
    aes(
      x = displ,
      y = hwy,
      size = cyl
    ),
    color = "blue"
  )

# Does not work:
ggplot(data = mpg) +
  geom_point(
    aes(
      x = displ,
      y = hwy,
      size = cyl
    ),
    color = blue
  )
