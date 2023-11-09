# Deploying AKS & ACR

The terraform config file will create the following resources:

1. Resource Group
2. Azure Container Registery (ACR)
3. Azure Kubernetes Service (AKS)
4. Role Assignment to assing `acrpull` role to the managed identity associated to the AKS cluster, so it has the authantication to pull the Docker images from ACR

To deploy this config:

1. Navigate to the `main.tf` file location

2. Run the following commands

```
terraform init

terraform plan -out tfplan

terraform apply tfplan

```