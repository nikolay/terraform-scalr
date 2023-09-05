terraform {
  required_version = "1.5.5"
  required_providers {
    scalr = {
      source  = "registry.scalr.io/scalr/scalr"
      version = "1.4.0"
    }
  }
  cloud {
    hostname     = "nikolay.scalr.io"
    organization = "env-t47pn95m9cvp83o"
    workspaces {
      name = "terraform-scalr"
    }
  }

}
