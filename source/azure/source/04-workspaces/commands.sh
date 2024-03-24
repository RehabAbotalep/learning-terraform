# List existing workspaces
terraform workspace list

# Create dev workspace
terraform workspace new dev
terraform workspace list

terraform plan -out dev.tfplan

terraform apply dev.tfplan

# Create test workspace
terraform workspace new test
terraform workspace list

terraform plan -out test.tfplan

terraform apply test.tfplan

# Create prod workspace
terraform workspace new prod
terraform workspace list

terraform plan -out prod.tfplan

terraform apply prod.tfplan

# Switch to another workspace
terraform workspace select <workspace_name>

# terraform workspace help
terraform workspace -h