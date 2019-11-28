### Pivoting

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# Two datasets containing the same data, wider and longer:
table1
table2

# How to summarize?
table1 %>%
  group_by(country) %>%
  summarize(
    max_cases = max(cases),
    max_population = max(population)
  ) %>%
  ungroup()

# Iterate over columns:
table1 %>%
  group_by(country) %>%
  summarize_at(
    vars(cases, population),
    max
  ) %>%
  ungroup()

# In the longer form, this becomes a grouped operation:
table2 %>%
  group_by(country, type) %>%
  summarize(
    max = max(count)
  ) %>%
  ungroup()

# Converting to longer form: pivot_longer()
table1

table1 %>%
  pivot_longer(-c(country, year))

# Your turn: How to rename and arrange to create `table1`?
try(
  table1 %>%
    pivot_longer(-c(country, year)) %>%
    select(....., everything())
)

table1 %>%
  pivot_longer(
    -c(country, year),
    names_to = "type",
    values_to = "count"
  )

# Converting to wider form: pivot_wider()
table2

table2 %>%
  pivot_wider(names_from = type, values_from = count)

# Your turn:
# pivot_wider() expects columns `name` and `value` by default.
# How to transform so that we don't need `names_from` and `values_from`?
try(
  table2 %>%
    select(......, everything()) %>%
    pivot_wider()
)

# Longer form: more useful for plotting all values side by side
table2 %>%
  ggplot() +
  geom_col(aes(country, count, fill = type), position = "dodge") +
  facet_wrap(~year) +
  scale_y_log10()

table1 %>%
  ggplot() +
  geom_col(aes(country, population), position = "dodge", fill = "blue") +
  geom_col(aes(country, cases), position = "dodge", fill = "red") +
  facet_wrap(~year) +
  scale_y_log10()

# Wider form: more useful for plotting a single value
table1 %>%
  ggplot() +
  geom_col(aes(country, cases)) +
  facet_wrap(~year)

table2 %>%
  filter(type == "cases") %>%
  ggplot() +
  geom_col(aes(country, count)) +
  facet_wrap(~year)

# Wider form: the only way to correlate values
table1 %>%
  ggplot() +
  geom_point(aes(cases, population, color = factor(year), shape = country)) +
  scale_x_log10() +
  scale_y_log10()

# Split data
table4a
table4b

# Combine
table4 <-
  bind_rows(
    cases = table4a,
    population = table4b,
    .id = "type"
  )
table4

# Your turn: The results aren't quite the same as those of `table2` yet,
# what is missing?
try(
  table4 %>%
    ...(c(.....))
)

# anscombe data
anscombe
anscombe %>%
  as_tibble()

# Difficult to aggregate and visualize
anscombe %>%
  as_tibble() %>%
  summarize_all(list(~ mean(.), ~ sd(.)))

lm(y1 ~ x1, anscombe)
lm(y2 ~ x2, anscombe)
lm(y3 ~ x3, anscombe)
lm(y4 ~ x4, anscombe)

# Easier to work with in longer form
anscombe_longer <-
  anscombe %>%
  mutate(id = row_number()) %>%
  pivot_longer(
    -id,
    names_pattern = "(.)(.)",
    names_to = c(".value", "measurement")
  ) %>%
  arrange(measurement, id)

anscombe_longer %>%
  group_by(measurement) %>%
  summarize(model = list(lm(y ~ x, .))) %>%
  ungroup() %>%
  pull()

anscombe_longer %>%
  ggplot(aes(x = x, y = y)) +
  geom_point() +
  facet_wrap(vars(measurement))

# WHO data
who %>%
  view()

who_longer <-
  who %>%
  pivot_longer(
    -(country:year),
    names_pattern = "([a-z_]+)_(.)([0-9]+)",
    names_to = c(".value", "sex", "age")
  )

who_longer

who_longer %>%
  count(sex, age)

# Formatting for presentation with ftable()
table2 %>%
  xtabs(count ~ ., .) %>%
  ftable()

# Deciding what goes into the columns, what into the rows
table2 %>%
  xtabs(count ~ ., .) %>%
  ftable(col.vars = c("year", "type"))

# gt package
