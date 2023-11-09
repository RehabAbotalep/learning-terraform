resource "aws_instance" "dev" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro"
  count         = var.is-test == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.large"
  count         = var.is-test == false ? 1 : 0
}