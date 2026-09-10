# data block to get the existing resources configs
data "github_repository" "gh_repos" {
  count     = length(var.repositories)
  full_name = "${var.github_account_owner}/${var.repositories[count.index]}"
}
