library(tidyverse)


w <- mpg
x <- filter(w, manufacturer == "mercury")
y <- filter(x, cyl < 8)
View(y)



View(
  filter(
    filter(
      mpg,
      manufacturer == "mercury"
    ),
    cyl < 8
  )
)



View(filter(mpg, manufacturer == "mercury", cyl < 8))

filter(mpg, manufacturer == "mercury" & cyl < 8)




mpg %>%
  filter(manufacturer == "mercury") %>%
  filter(cyl < 8) %>%
  View()


mpg %>%
  filter(manufacturer == "mercury")

sqrt(2) ^ 2 == 2
near(sqrt(2) ^ 2, 2)

5 %in% c(3, 4, 6)
5 %in% c(3, 4, 5, 6)

between(5, 3, 6)

mpg %>%
  filter(between(displ, 3, 5))

TRUE
FALSE

TRUE & FALSE
FALSE | TRUE
! FALSE

mpg %>%
  filter(class == "2seater") %>%
  ggplot() +
  geom_point(aes(displ, hwy))

mpg %>%
  arrange(displ) %>%
  filter(class == "2seater")

mpg %>%
  mutate(lp100km_hwy = 235 / hwy) %>%
  View

mpg %>%
  mutate(`Litre per 100 km on the highway` = 235 / hwy) %>%
  rename(`Engine displacement` = displ) %>%
  ggplot() +
  geom_jitter(aes(x = `Engine displacement`,
                  y = `Litre per 100 km on the highway`))

x <- 1:10
x
cumsum(x)
cummean(x)

mpg %>%
  mutate(lpkm = 2.35 / hwy,
         `Litre per 100 km on the highway` = 100 * lpkm) %>%
  rename(`Engine displacement` = displ) %>%
  ggplot() +
  geom_jitter(aes(`Engine displacement`,
                  `Litre per 100 km on the highway`))

`Litre per 100 km on the highway`
"Litre per 100 km on the highway"


library(nycflights13)
flights %>%
  filter(year == 2013, month == 7, day == 1)

flights %>%
  filter(year == 2013) %>%
  filter(month == 7) %>%
  filter(day == 1)

flights %>%
  filter(year == 2013)

filter(flights, year == 2013)
