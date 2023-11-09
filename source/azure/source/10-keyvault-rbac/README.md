# Deploying Key Vault and Secrets

The Terraform configuration in `main.tf` creates an Azure Key Vault with RBAC enabled, assigns a **Secrets Officer** role to manage secrets within the Key Vault, stores a secret in the Key Vault, and assigns a **Secrets User** role to read that specific secret. 

### Deployed Resource:

1. Resource Group
2. Key Vault
3. Role Assignment for "Key Vault Secrets Officer"
4. Key Vault Secret
5. Role Assignment for "Key Vault Secrets User"


To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```