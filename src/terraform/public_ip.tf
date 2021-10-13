# public_ip
module "public_ip" {
  source              = "../../modules/public_ip"
  location            = var.azure_region
  resource_group_name = module.resource_group.name
  name                = "pip01"
}