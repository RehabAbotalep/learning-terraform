resource "aws_eip" "lb1" {
  domain = "vpc"
}


resource "aws_eip" "lb2" {
  provider = aws.ohio
  domain   = "vpc"
}