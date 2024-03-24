# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0eee007e15b63a09a"
resource "aws_security_group" "sg" {
  description = "My Security Group"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Rule"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "MySecurityGroup"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Env = "Dev"
  }
  tags_all = {
    Env = "Test"
  }
  vpc_id = "vpc-0e577a7ff39a04434"
}
