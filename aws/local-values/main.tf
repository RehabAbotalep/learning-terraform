locals {
  service_name = "forum"
  owner        = "Community Team"
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }
}

resource "aws_instance" "dev" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "prod" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.large"
  tags          = local.common_tags
}