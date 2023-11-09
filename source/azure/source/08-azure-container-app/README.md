# Deploying Azure Container App

The terraform config file will create the following resources:

1. Resource Group
2. Azure Container App Environment
3. Azure Container App that deploys the latest version of this Docker image `mcr.microsoft.com/azuredocs/containerapps-helloworld:latest` from MCR (Microsoft Container Registry)
4. Log Analytics workspace

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```