# resource blocks to deploy the resources
resource "github_repository_ruleset" "ruleset" {
  for_each = local.repos_data

  name        = "default-branch-protection"
  repository  = each.value.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  rules {
    required_linear_history = true
    required_signatures     = true

    pull_request {
      dismiss_stale_reviews_on_push     = true
      required_review_thread_resolution = true
      required_approving_review_count   = 0
      allowed_merge_methods             = ["merge", "squash", "rebase"]
    }

    required_status_checks {
      required_check {
        context = "CommitCheck"
      }
    }
  }
}

# resource block to create the classis branch protection rule
# resource "github_branch_protection" "classic_branch_rule" {
#   for_each = local.repos_data

#   repository_id    = each.value.node_id
#   pattern          = each.value.default_branch
#   enforce_admins   = true
#   allows_deletions = true

#   required_status_checks {
#     strict   = false
#     contexts = ["CommitCheck"]
#   }

#   required_pull_request_reviews {
#     dismiss_stale_reviews = true
#     restrict_dismissals   = true
#   }
# }
