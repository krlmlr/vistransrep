get_stage("script") %>%
  add_step(step_run_code(rmarkdown::build_site()))

get_stage("deploy") %>%
  add_step(step_add_to_known_hosts("github.com")) %>%
  add_step(step_install_ssh_keys()) %>%
  add_step(step_test_ssh()) %>%
  add_step(step_push_deploy())
