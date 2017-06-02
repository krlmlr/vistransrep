library(tidyverse)
theme_set(theme_bw())

#' # Caption
#'
#' ## Subcaption
#'
#' This is **bold** and *emphasized* text.

mpg_plot <- ggplot(data = mpg)

# Basic scatterplot
simple_scatter_plot <-
  mpg_plot + # comment
  geom_point(mapping = aes(x = class, y = hwy))

simple_scatter_plot

mpg_plot +
  geom_point(
    mapping = aes(x = displ, y = 235 / hwy)
  )

mpg_plot +
  geom_point(
    mapping = aes(x = displ, y = 235 / hwy, shape = drv)
  )

mpg_plot +
  geom_point(
    mapping = aes(x = displ, y = 235 / hwy, color = drv)
  )

mpg_plot +
  geom_point(
    mapping = aes(x = displ, y = 235 / hwy, size = cyl)
  )

mpg_plot +
  geom_point(
    mapping = aes(x = displ, y = 235 / hwy), size = 3
  )
