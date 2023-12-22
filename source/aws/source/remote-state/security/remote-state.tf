data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "rehab-terraform-backend"
    key    = "newwork/terraform.tfstate"
    region = "us-east-1"
    }
  }