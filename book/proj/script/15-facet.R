### Facet plots

library(tidyverse)

# facet_wrap()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_wrap(~ class)

# facet_grid()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_grid(year ~ drv)
