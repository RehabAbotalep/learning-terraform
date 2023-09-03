# Deploying Windows VM & Bastion host

The Terraform configuration in `main.tf` automates the provisioning of Azure resources required to create a Windows VM, set up Azure Bastion for secure remote access, and install the IIS web server on the VM.

### Deployed Resource:

1. Resource Group
2. Virtual Network
3. Subnet for Virtual Machine
4. Subnet for Azure Bastion
5. Network Interface
6. Windows Virtual Machine
7. Bastion Public IP Address
8. Bastion Host


To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```