# locals block for reusbale values
locals {
  repos_data = {
    for item in data.github_repository.gh_repos :
    item.id => {
      node_id        = item.node_id
      name           = item.name
      default_branch = item.default_branch
    }
  }
}
