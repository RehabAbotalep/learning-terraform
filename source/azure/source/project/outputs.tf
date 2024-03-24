output "database_name" {
  value = azurerm_sql_database.db.name
}

output "appservice_name" {
  value = azurerm_app_service.app_service.name
}

output "vault_name" {
  value = azurerm_key_vault.keyvault.name
}