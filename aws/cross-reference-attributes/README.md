# Cross Reference Attributes

The Terraform configuration in `main.tf` automates the provisioning of an Elastic IP and a security group that allows inbound TLS traffic on port 443 from the provisioned Elastic IP address.

### Deployed Resource:

1. Elastic IP
2. Security Group


To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```

### Documentation

[Terraform AWS EIP Documentation](https://registry.terraform.io/providers/hashicorp/aws/2.42.0/docs/resources/eip)

[Terraform AWS Security Group Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
