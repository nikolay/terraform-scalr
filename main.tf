# tags

resource "scalr_tag" "default" {
  for_each = local.tags

  account_id = data.scalr_current_account.this.id

  name = each.value
}

# service accounts

resource "scalr_service_account" "terraform_scalr" {
  name = "terraform-scalr"

  account_id = data.scalr_current_account.this.id
}

# vcs providers

resource "scalr_vcs_provider" "github_nikolay" {
  name = "github-nikolay"

  account_id = data.scalr_current_account.this.id

  vcs_type = "github"
  token    = ""
}

# environments

resource "scalr_environment" "production" {
  name = "production"

  account_id = data.scalr_current_account.this.id

  cost_estimation_enabled = true

  policy_groups = []

  default_provider_configurations = []

  tag_ids = [for tag in ["production"] : scalr_tag.default[tag].id]
}

# workspace

resource "scalr_workspace" "terraform_scalr" {
  name = "terraform-scalr"

  environment_id = scalr_environment.production.id

  vcs_provider_id = scalr_vcs_provider.github_nikolay.id

  vcs_repo {
    identifier = "nikolay/terraform-scalr"
    branch     = "main"
  }

  var_files = [
    "./terraform.tfvars",
  ]

  working_directory = "/"
}
