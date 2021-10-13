module "virtual_machine" {
    source = "../../modules/vm"
    name                 = "vm01"
    location             = var.azure_region
    resource_group_name  = module.resource_group.name
    network_interface_id = [module.network_interface.id]
    vm_size              = "Standard_DS12_v2"
    computer_name        = "sqlvm01"
    admin_username       = var.VM_ADMIN_USERNAME
    admin_password       = var.VM_ADMIN_PASSWORD
}