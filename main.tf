module "this" {
  count = var.name == null ? 0 : 1

  source = "./boilerplate"

  name       = var.name
  visibility = var.visibility
}

output "repository_url" {
  value       = try(one(module.this).repository_url, "")
  description = "URL to the repository on the web"
}
