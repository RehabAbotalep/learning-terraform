provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "myFirstResourceGroup"
  location = "centralus"
}