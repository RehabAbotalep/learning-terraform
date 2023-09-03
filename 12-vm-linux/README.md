# Deploying Linux VM

The Terraform configuration in `main.tf` provisions Azure resources required to create a Linux virtual machine with SSH access and boot diagnostics. 

### Deployed Resource:

1. Resource Group
2. Virtual Network
3. Subnet
4. Public IP Address
5. Network Security Group
6. Network Interface
7. Network Interface Security Group Association
8. Storage Account for Boot Diagnostics
9. SSH Key Pair (TLS Private Key)
10. Linux Virtual Machine

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```