# network security group
module "network_security_group" {
  source              = "../../modules/nsg"
  location            = var.azure_region
  resource_group_name = module.resource_group.name
  name                = "nsg01"
}

module "rdp_security_rule" {
  source                      = "../../modules/network_security_rule"
  name                        = "allow_rdp"
  priority                    = 100
  direction                   = "Inbound"
  destination_port_range      = "3389"
  source_address_prefix       = var.AUTHORIZED_IP
  destination_address_prefix  = module.network_interface.private_ip_address
  resource_group_name         = module.resource_group.name
  network_security_group_name = module.network_security_group.name
}

module "sql_security_rule" {
  source                      = "../../modules/network_security_rule"
  name                        = "allow_sql"
  priority                    = 110
  direction                   = "Inbound"
  destination_port_range      = "1433"
  source_address_prefix       = var.AUTHORIZED_IP
  destination_address_prefix  = module.network_interface.private_ip_address
  resource_group_name         = module.resource_group.name
  network_security_group_name = module.network_security_group.name
}