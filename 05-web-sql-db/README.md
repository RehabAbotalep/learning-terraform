# Deploying Azure App Service & SQL Database

The terraform config file will create the following resources:

1. Resource Group
2. App Service Plan
3. Azure App Service
4. SQL Server
5. SQL Database

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```

# Deploying Azure App Service & SQL Database with Terraform & GitHub Action

You can find the YAML file within the following directory: `.github/workflows/terraform.yml`
