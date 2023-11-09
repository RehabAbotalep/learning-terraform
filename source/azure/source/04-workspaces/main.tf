provider "azurerm" {
  features {

  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

variable "resource_group_names" {
  type = map(any)
  default = {
    dev  = "dev-rg"
    test = "test-rg"
    prod = "prod-rg"
  }
}


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_names[terraform.workspace]
  location = "centralus"

}