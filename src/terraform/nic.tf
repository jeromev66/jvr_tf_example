module "network_interface" {
  source               = "../../modules/nic"
  name                 = "nic01"
  location             = var.azure_region
  resource_group_name  = module.resource_group.name
  subnet_id            = module.subnet.id
  private_ip_address   = "10.0.0.10"
  public_ip_address_id = module.public_ip.id
}