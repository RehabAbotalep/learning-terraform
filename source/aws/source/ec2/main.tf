resource "aws_instance" "first-ec2" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t3.micro"

  tags = {
    Name = "first-ec2"
  }
}



