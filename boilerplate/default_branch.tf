resource "github_branch" "main" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

resource "github_branch_protection" "this" {
  # files need to be created before appllying the protection rules otherwise they can't be committed
  depends_on = [github_repository_file.this]

  repository_id = github_repository.this.node_id
  pattern       = github_branch.main.branch

  enforce_admins = true

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    require_code_owner_reviews = true
  }
}
