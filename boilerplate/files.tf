resource "github_repository_file" "this" {
  for_each = fileset("${path.module}/files", "*")

  repository = github_repository.this.name
  branch     = data.github_branch.main.branch
  file       = each.value
  content    = file("${path.module}/files/${each.value}")

  overwrite_on_create = true
}
