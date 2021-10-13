module "keyvault" {
  source              = "../../modules/keyvault"
  name                = "jvrprojectakv01"
  location            = var.azure_region
  resource_group_name = module.resource_group.name
  tenant_id           = var.TENANT_ID
}

module "jvr_akv_access_policy" {
  source             = "../../modules/akv_access_policies"
  key_vault_id       = module.keyvault.id
  tenant_id          = var.TENANT_ID
  object_id          = var.JVR_OBJECT_ID
  secret_permissions = [
    "Get","List","Set"
  ]
}

module "spn_akv_access_policy" {
  source             = "../../modules/akv_access_policies"
  key_vault_id       = module.keyvault.id
  tenant_id          = var.TENANT_ID
  object_id          = var.SPN_DEVOPS_OBJECT_ID
  secret_permissions = [
    "Get","List","Set","Delete","Recover","Backup","Restore","Purge"
  ]
}

module "vm_admin_username" {
  source = "../../modules/akv_secret"
  name         = "vm-admin-username"
  value        = var.VM_ADMIN_USERNAME
  key_vault_id = module.keyvault.id
  depends_on = [
    module.spn_akv_access_policy
  ]
}

module "vm_admin_password" {
  source = "../../modules/akv_secret"
  name         = "vm-admin-password"
  value        = var.VM_ADMIN_PASSWORD
  key_vault_id = module.keyvault.id
  depends_on = [
    module.spn_akv_access_policy
  ]
}

module "sql_admin_username" {
  source = "../../modules/akv_secret"
  name         = "sql-admin-username"
  value        = var.SQL_ADMIN_USERNAME
  key_vault_id = module.keyvault.id
  depends_on = [
    module.spn_akv_access_policy
  ]
}

module "sql_admin_password" {
  source = "../../modules/akv_secret"
  name         = "sql-admin-password"
  value        = var.SQL_ADMIN_PASSWORD
  key_vault_id = module.keyvault.id
  depends_on = [
    module.spn_akv_access_policy
  ]
}