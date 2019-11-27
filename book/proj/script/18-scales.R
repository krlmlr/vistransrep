### Scales

library(tidyverse)
library(ggpubr)

# Base plot
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_pubr()

# Add descriptive labels: the labs() function
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_pubr() +
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
  theme_pubr() +
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
  theme_pubr() +
  scale_x_log10(name = "xxx")

# xxx
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  theme_pubr() +
  scale_x_continuous(limits = c(2, 6), breaks = c(2, 4, 6))

# xxx
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  theme_pubr() +
  scale_color_hue()

# xxx
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point(aes(color = class)) +
  theme_pubr() +
  scale_color_viridis_d()

# xxx
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_pubr() +
  scale_color_manual(values = c(
    "2seater" = "#000000",
    "compact" = "#3355FF",
    "midsize" = "#006400",
    "minivan" = "#FF5522",
    "pickup" = "#66FFFF",
    "subcompact" = "#FF0000",
    "suv" = "#FF55FF"
  ))

# For "corporate design": ggthemr, https://github.com/cttobin/ggthemr
## install.packages("devtools")
## devtools::install_packages("cttobin/ggthemr")
