### Export & saving

library(tidyverse)

## xxx1
## ggplot(mtcars, aes(mpg, wt)) +
##   geom_point()

ggsave("mtcars.pdf")
ggsave("mtcars.png")

file.remove(c("mtcars.pdf", "mtcars.png"))

## png("Plot.png")
## plot(mpg$displ, mpg$hwy)
## dev.off()

## ggplot(mpg, aes(disply, hwy)) +
##   geom_point()
## ggsave("Plot.png")

p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()

p + geom_point(aes(color = class))

print(p)

str(p)
