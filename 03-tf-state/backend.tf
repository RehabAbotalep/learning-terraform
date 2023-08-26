terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate_rg"
    storage_account_name = "statestac"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}