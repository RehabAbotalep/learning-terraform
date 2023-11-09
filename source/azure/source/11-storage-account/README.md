# Deploying Storage Account

The Terraform configuration in `main.tf` provisions Azure resources for storing a file ("commands.sh") in a specific storage blob within a storage container, all within a specified resource group and storage account. 

### Deployed Resource:

1. Resource Group
2. Storage Account
3. Storage Container
4. Storage Blob

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```