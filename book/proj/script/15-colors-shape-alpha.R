### Colors and shape

library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "blue"
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class))

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = cty))

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(aes(shape = fl))

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
  )
) +
  geom_point(aes(color = class, shape = drv))

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    size = cty
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = class,
    size = cty
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(alpha = 0.2)

try(print(
  ggplot(
    data = mpg,
    mapping = aes(
      x = displ,
      y = hwy,
      color = blue
    )
  ) +
    geom_point()
))

mpg
"mpg"

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = "blue"
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(
    color = "blue"
  )
