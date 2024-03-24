terraform {
  backend "s3" {
    bucket = "rehab-terraform-backend"
    key    = "newwork/terraform.tfstate"
    region = "us-east-1"
  }
}
