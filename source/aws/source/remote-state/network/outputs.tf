output "eip_address" {
  value = aws_eip.lb.public_ip
}