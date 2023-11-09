# Deploying Resource Groups

The terraform config file will create the following resources:

1. Resource Group

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```