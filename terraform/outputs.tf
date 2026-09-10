# output values to print the output
output "repo_details" {
  value = {
    for item in data.github_repository.gh_repos :
    item.id => {
      node_id        = item.node_id
      default_branch = item.default_branch
    }
  }
}
