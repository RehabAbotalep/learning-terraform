output "app_url" {
  value = azurerm_container_app.aca.latest_revision_fqdn
}
