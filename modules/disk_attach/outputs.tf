output "id" {
  value = azurerm_virtual_machine_data_disk_attachment.disk_attach.id
}

output "lun" {
  value = azurerm_virtual_machine_data_disk_attachment.disk_attach.lun
}