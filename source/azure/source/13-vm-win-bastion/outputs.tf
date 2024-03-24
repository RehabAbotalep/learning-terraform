output "vm_id" {
  value = azurerm_windows_virtual_machine.vm.id
}

output "vm_ip_address" {
  value = azurerm_windows_virtual_machine.vm.public_ip_address
}