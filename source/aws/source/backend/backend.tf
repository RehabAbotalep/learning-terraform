terraform {
  backend "s3" {
    bucket = "rehab-terraform-backend"
    key    = "Hello World/terraform.tfstate"
    region = "us-east-1"
  }
}
