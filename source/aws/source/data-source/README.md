## Data Source

In Terraform, a data source is a way to fetch and use information from external sources or existing infrastructure that is not managed by Terraform. Data sources allow you to import data into your Terraform configuration, and this data can then be used in various ways, such as referencing attribute values or using the data in expressions.

## Example

In the following Terraform configuration, a data block is used to define a data source named `app_ami` that retrieves information about an Amazon Machine Image (AMI) using the AWS provider.

```
data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

```
After defining this data source, you can reference the information retrieved in other parts of your Terraform configuration. For example, you might use the AMI ID in the configuration of an EC2 instance.

```
resource "aws_instance" "first-ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "first-ec2"
  }
}

```