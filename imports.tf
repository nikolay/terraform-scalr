import {
  id = "sa-v0o29gnta2cu7bbcl"
  to = scalr_service_account.terraform_scalr
}

import {
  id = "vcs-v0o29ghuk8co3u350"
  to = scalr_vcs_provider.github_nikolay
}

import {
  id = "env-t47pn95m9cvp83o"
  to = scalr_environment.production
}

import {
  id = "ws-v0o29ce4vjuf2invp"
  to = scalr_workspace.terraform_scalr
}
