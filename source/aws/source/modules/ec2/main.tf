resource "aws_instance" "first-ec2" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = var.instance_type

  tags = {
    Name = "first-ec2"
  }
}

