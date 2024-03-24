data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "first-ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "first-ec2"
  }
}