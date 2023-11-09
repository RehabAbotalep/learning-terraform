output "app_service_hostname" {
  value = azurerm_app_service.aps.default_site_hostname
}

output "app_service_ipaddress" {
  value = azurerm_app_service.aps.outbound_ip_addresses
}

output "sql_server_id" {
  value = azurerm_sql_server.sqldb.id
}