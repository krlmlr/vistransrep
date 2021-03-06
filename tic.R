get_stage("install") %>%
  add_step(step_run_code(rownames(utils::installed.packages()))) %>%
  add_step(step_run_code(getwd())) %>%
  add_step(step_run_code(dir())) %>%
  add_step(step_run_code(remotes::install_deps())) %>%
  add_step(step_run_code(rownames(utils::installed.packages())))

get_stage("deploy") %>%
  add_step(step_add_to_known_hosts("github.com")) %>%
  add_step(step_install_ssh_keys()) %>%
  add_step(step_test_ssh()) %>%
  add_step(step_setup_push_deploy(path = "docs", branch = "gh-pages")) %>%
  add_step(step_run_code(withr::with_dir("website", rmarkdown::render_site()))) %>%
  add_step(step_run_code(withr::with_dir("book", bookdown::render_book("_output.yml", output_format = "all")))) %>%
  add_step(step_run_code(unlink(dir("docs", pattern = "^[^0-9]", full.names = TRUE), recursive = TRUE))) %>%
  add_step(step_run_code(file.copy(dir("book/_book", full.names = TRUE), "docs", recursive = TRUE))) %>%
  add_step(step_run_code({
    files <- dir("docs", pattern = "[.]html$", full.names = TRUE)
    walk(files, ~ {
      print(system.time(pkgdown::autolink_html(.x)))
    })
  })) %>%
  add_step(step_do_push_deploy(path = "docs"))
