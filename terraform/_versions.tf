# terraform block to setup version req for terraform and providers
terraform {
  required_version = "~> 1.15.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
  }
}
