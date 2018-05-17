library(tidyverse)
ggplot(data = mpg) + geom_point(aes(x = displ, y = hwy))
