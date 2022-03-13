resource "github_repository" "this" {
  name = var.name

  visibility = var.visibility

  has_issues   = false
  has_projects = false
  has_wiki     = false

  is_template = false

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  allow_auto_merge       = true
  delete_branch_on_merge = true

  vulnerability_alerts = true

  auto_init = true
}
