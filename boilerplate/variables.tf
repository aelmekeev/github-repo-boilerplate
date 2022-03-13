variable "name" {
  type        = string
  description = "Name of the repository"
}

variable "visibility" {
  type        = string
  description = "Visibility of the repository. Could be public or private."
  default     = "private"

  validation {
    condition     = contains(["private", "public"], var.visibility)
    error_message = "Visibility of repo could be either private or public."
  }
}
