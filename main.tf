
terraform {
  backend "remote" {
    organization = "your-terraform-org"
    workspaces {
      name = "your-workspace"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
