library(tidyverse)

table1
table2

table2 %>%
  spread(type, count)

table1 %>%
  gather(type, count, cases, population)

table1 %>%
  select(-country, -year)

table1 %>%
  gather(type, count, -country, -year)

table1 %>%
  gather(type, count, -country:-year) %>%
  filter(country != "Afghanistan") %>%
  arrange(year)

table3

table3 %>%
  separate(
    rate,
    into = c("cases", "population")
  )

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    convert = TRUE
  )

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    sep = "/",
    convert = TRUE
  )

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    sep = "-",
    convert = TRUE
  )

table3 %>%
  separate(rate, into = c(`cases`, `population`))

table1 %>%
  unite(
    "rate",
    cases:population
  )

table1 %>%
  unite(
    "rate",
    -country, -year,
    sep = "/"
  )
