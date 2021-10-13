module "nsg_snet_assoc" {
  source                    = "../../modules/nsg_snet_association"
  subnet_id                 = module.subnet.id
  nsg_id = module.network_security_group.id
}