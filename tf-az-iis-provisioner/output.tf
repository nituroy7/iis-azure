output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}
output "rdp_connection_string" {
  value = "mstsc.exe /v:${azurerm_public_ip.publicip.ip_address}:3389"
}

output "local_win_credentials" {
  value     = "Windows user/pass = ${azurerm_windows_virtual_machine.windows_vm.admin_username}/${azurerm_windows_virtual_machine.windows_vm.admin_password}"
  sensitive = true
}