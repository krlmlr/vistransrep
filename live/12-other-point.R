library(tidyverse)

ggplot(data = mpg) +
  geom_jitter(
    aes(
      x = displ,
      y = hwy
    ),
    alpha = .2
  )

ggplot(data = mpg) +
  geom_point(
    aes(
      x = displ,
      y = hwy
    )
  ) +
  geom_smooth(
    aes(
      x = displ,
      y = hwy
    )
  )

ggplot() +
  geom_point(
    data = mpg,
    aes(
      x = displ,
      y = hwy
    )
  ) +
  geom_smooth(
    data = mpg,
    aes(
      x = displ,
      y = hwy
    )
  )


ggplot(
  data = mpg,
  aes(
    x = displ,
    y = hwy
  )
) +
  geom_point( ) +
  geom_smooth()


ggplot(
  data = mpg,
  aes(
    x = displ,
    y = 235 / hwy
  )
) +
  geom_point( ) +
  geom_smooth(aes(linetype = drv))

ggplot(
  data = mpg,
  aes(
    x = displ,
    y = 235 / hwy
  )
) +
  geom_smooth(aes(linetype = drv)) +
  geom_point( )

ggplot(
  data = mpg,
  aes(
    x = displ,
    y = 235 / hwy
  )
) +
  geom_text(aes(label = class))
