resource "azurerm_resource_group" "rg" {
  name     = "importRG02"
  location = "westeurope"
}

resource "azurerm_storage_account" "storage" {
  name                     = "terraformsac0102"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}