module "dataDisk" {
  source               = "../../modules/disk"
  name                 = "${module.virtual_machine.name}-dataDisk"
  location             = var.azure_region
  resource_group_name  = module.resource_group.name
  disk_size            = "80"
}

module "logDisk" {
  source               = "../../modules/disk"
  name                 = "${module.virtual_machine.name}-logDisk"
  location             = var.azure_region
  resource_group_name  = module.resource_group.name
  disk_size            = "80"
}

module "tempDbDisk" {
  source               = "../../modules/disk"
  name                 = "${module.virtual_machine.name}-tempDbDisk"
  location             = var.azure_region
  resource_group_name  = module.resource_group.name
  disk_size            = "80"
}