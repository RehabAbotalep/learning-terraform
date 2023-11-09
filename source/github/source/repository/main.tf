resource "github_repository" "example" {
  name        = "Terraform"
  description = "Ths repo created by Terraform code"

  visibility = "public"
}