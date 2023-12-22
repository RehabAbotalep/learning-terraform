# Import Azure resources into Terraform

You have multiple options for importing existing infrastructure into Terraform:

1. **Native Terraform Import:**

Terraform provides a native import resource functionality that allows you to bring existing resources into the Terraform state file. However, it won't generate the Terraform configuration (.tf) files for you. You must write the configuration manually and then use the import command like this:


`terraform import <resource_type>.<resource_name> <resource_id>`

2. **Using Import blocks**

Use the import block in Terraform to easily manage existing infrastructure. Unlike the terraform import it will generate the Terraform configuration (.tf) files for you.

You can put an import block in any Terraform file. Usually, we create a file called imports.tf, or they just place the import block next to the resource block it's importing.

```
import {
  to = aws_instance.example
  id = "i-abcd1234"
}

```

`to `: The instance address this resource will have in your state file.
`id` : A string with the import ID of the resource.

To generate the configuration file run the following command: `terraform plan -generate-config-out=generated_resources.tf`

Then Run `terraform apply` to import your infrastructure.

3. **Using aztfexport:**

`aztfexport:` is a tool that streamlines the import process by not only bringing the resource into Terraform state but also generating the corresponding Terraform configuration files for you.

To use aztfexport, follow these steps:

- Install aztfexport:

On Windows, you can install it using the following command:

`winget install aztfexport`

- Generate Terraform Configuration and State File:

Run the following command to generate the Terraform configuration and state file for a specific resource group:

`aztfexport resource-group RESOURCE-GROUP-NAME`

More info about aztfexport:

[Overview of Azure Export for Terraform](https://learn.microsoft.com/en-us/azure/developer/terraform/azure-export-for-terraform/export-terraform-overview#installation)

[aztfexport on GitHub](https://github.com/Azure/aztfexport)


