# Learning Terraform

Welcome to the "Learning Terraform" repository! This collection includes various Terraform configurations developed during the process of learning and exploring infrastructure as code. Whether you're provisioning resources on Azure, AWS, or integrating with GitHub, you'll find examples and explanations here.

## Table of Contents

| No  | Configuration Source                  | Description                    |
| --- | ------------------------------------- | ------------------------------ |
| 1   | [Azure](./source/azure/README.md)     | Azure infrastructure examples. |
| 2   | [AWS](./source/aws/README.md)         | AWS infrastructure examples.   |
| 3   | [GitHub](./source/github/README.md)   | GitHub-related configurations. |


## How to Use

1. **Clone Repository**: Clone this repository to your local machine.
2. **Navigate to Configuration Directory**: Move to the specific configuration directory you want to explore (e.g., `cd source/aws/source/ec2`).
3. **Initialize Terraform**: Run `terraform init` to set up the working directory.
4. **Review and Apply**: Check the configuration files and run `terraform apply` to create resources.
5. **Clean Up**: When finished, run `terraform destroy` to remove the created resources.

## Resources

[Terraform Documentation](https://developer.hashicorp.com/terraform)
