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
  add_step(step_run_code(withr::with_dir("website", rmarkdown::render_site()))) %>%
  add_step(step_hello_world()) %>%
  add_step(step_push_deploy())
