# Outputs 

Terraform outputs let you share data between Terraform configurations, and with other tools and automation.

This Terraform configuration provisions an Elastic IP and exposes its public IP address as an output variable named "public_ip".

```
resource "aws_eip" "lb" {
  domain = "vpc"
}

output "public_ip" {
  value = aws_eip.lb.public_ip
}

```

You can output any resource attributes like the following:

```
output "OUTPUT_NAME" {
  value = RESOURCE_ATTRIBUTE
}

```

**OUTPUT_NAME:** is the name you assign to the output variable.

**RESOURCE_ATTRIBUTE:** is the attribute of a resource that you want to expose.

In the previous example, WE defined an output named "public_ip" and the value of this output is set to aws_eip.lb.public_ip, which references the public_ip attribute of the Elastic IP (EIP) resource created with the name "lb".

We can also use the result of any Terraform expression as the value of an output:

```
output "public-ip" {
  value = "https://${aws_eip.lb.public_ip}:1234"
}

```

### Deployed Resource:

1. Elastic IP


To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```

### Documentation

[Output data from Terraform](https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs)

[Terraform AWS EIP Documentation](https://registry.terraform.io/providers/hashicorp/aws/2.42.0/docs/resources/eip)
