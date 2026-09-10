# variable definition
variable "github_account_owner" {
  type        = string
  description = "the owner/org of the github account"
  default     = "oneanupam"
}

variable "repositories" {
  type        = list(string)
  description = "the list of the github repos"
}
