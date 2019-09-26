### <No caption defined>

---
title: "My rmarkdown document"
author: "Kirill Müller"
date: "2019-04-02"
output:
  html_document:
    toc: true
    number_sections: true
---

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(error = TRUE)

set.seed(20190402)

load(here("data/first-report.rda"))

# R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

- Bullet

- points

1. One

2. Two

3. Three

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:



# Comment


flights_per_month %>% 
  ggplot(aes(x = factor(month), y = n)) +
  geom_col() +
  labs(
    x = "Month",
    y = "Number of flights",
    title = "Flights per month",
    subtitle = "Across all airlines"
  )

## Including Plots


You can also embed plots, for example:

plot(pressure)

table1 %>% 
  knitr::kable()

table1 %>% 
  DT::datatable()
