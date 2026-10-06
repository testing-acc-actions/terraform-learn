terraform {
  required_version = ">= 1.0"
}

locals {
  project_name = "Terraform Learning"
}

output "project" {
  value = local.project_name
}
