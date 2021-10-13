# virtual network
module "virtual_network" {
  source              = "../../modules/vnet"
  location            = var.azure_region
  resource_group_name = module.resource_group.name
  name                = "vnet01"
  address_space       = ["10.0.0.0/24"]
}