### <No caption defined>

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Base plot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()


# Add descriptive labels: the labs() function
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  labs(
    x = "Displacement",
    y = "Highway mileage\n[miles per gallon]",
    color = "Car class",
    title = "Highway mileages depending on displacement",
    subtitle = "By car class"
  )

# Change scale to log scale
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10()

# Name in scale_() overwrites labs() without warning!
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  labs(
    x = "Displacement"
  ) +
  scale_x_log10(name = "xxx")

# Double log scale
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()

# Change color palette
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_brewer(type = "qual")

# Other options: viridis
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_viridis_d(option = "B")

# Full control: manual scale FIXME
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_manual(values = c("2seater" = "#000000", "minivan" = "#3355FF", ...))

  # FIXME: scale_color_manual(values = c("#000000", "#3355FF", "#4422FF", "#FF5522", "#66FFFF", "#1188FF", "#FF55FF"))

# For "corporate design": ggthemr, https://github.com/cttobin/ggthemr
