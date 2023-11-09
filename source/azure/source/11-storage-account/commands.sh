# format the tf files
terraform fmt

# validate the template
terraform validate

# plan and save the infra changes into tfplan file
terraform plan -output tfplan

# show the tfplan file
terraform show -json tfplan
terraform show -json tfplan >> tfplan.json

# apply the infra changes
terraform apply tfplan

# delete the infra
terraform destroy
