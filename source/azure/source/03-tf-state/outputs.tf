output "app_service_hostname" {
  value = azurerm_app_service.as.default_site_hostname
}

output "app_service_ipaddress" {
  value = azurerm_app_service.as.outbound_ip_addresses
}