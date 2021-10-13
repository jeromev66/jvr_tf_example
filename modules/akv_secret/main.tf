resource "azurerm_key_vault_secret" "add_secret_to_akv" {
  name         = var.name
  value        = var.value
  key_vault_id = var.key_vault_id
}