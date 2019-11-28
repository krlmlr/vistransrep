### <No caption defined>

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Formatting for presentation with ftable()
table2 %>%
  xtabs(count ~ ., .) %>%
  ftable()

# Deciding what goes into the columns, what into the rows
table2 %>%
  xtabs(count ~ ., .) %>%
  ftable(col.vars = c("year", "type"))

# gt package


# reporttools package

?`tidyr-package`

# https://tidyr.tidyverse.org/
NA
