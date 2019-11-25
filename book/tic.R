get_stage("install") %>%
  add_step(step_install_github("thomasp85/patchwork"))

do_bookdown(input = "", output_format = c("bookdown::pdf_book", "bookdown::gitbook"))
