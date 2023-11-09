# Deploying Key Vault and Secrets

The Terraform configuration in `main.tf` will sets up an Azure Resource Group, creates an Azure Key Vault within that resource group, configures access permissions, and stores a secret in the Key Vault. 
The secret can be used to securely store sensitive information, such as database passwords.

### Deployed Resource:

1. Resource Group
2. Key Vault
3. Access Policy for Azure Key Vault
4. Key Vault Secret

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```