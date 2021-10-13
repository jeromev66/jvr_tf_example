resource "azurerm_windows_virtual_machine" "virtual_machine" {
  name                     = var.name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  network_interface_ids    = var.network_interface_id
  size                     = var.vm_size
  admin_username           = var.admin_username
  admin_password           = var.admin_password
  timezone                 = "Romance Standard Time"
  computer_name            = var.computer_name
  enable_automatic_updates = true
  provision_vm_agent       = true

  source_image_reference {
    publisher = "MicrosoftSQLServer"
    offer     = "sql2019-ws2019"
    sku       = "standard"
    version   = "latest"
  }

  os_disk {
    name                 = "${var.name}-osDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  } 
}