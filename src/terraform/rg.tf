# resource group
module "resource_group" {
  source       = "../../modules/rg"
  location     = var.azure_region
  name         = "jvr_project"
  tags         = var.tags
}

module "add_role" {
  source       = "../../modules/role_assignement"
  scope        = module.resource_group.id
  role         = "Contributor"
  principal_id = var.JVR_OBJECT_ID
}