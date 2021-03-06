module "subnet" {
  source               = "../../modules/subnet"
  name                 = "subnet01"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes = ["10.0.0.0/28"]
}