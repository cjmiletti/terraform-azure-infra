resource "azurerm_key_vault" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tags                        = var.tags
}

resource "azurerm_key_vault_access_policy" "policies" {
  for_each     = var.access_policies
  key_vault_id = azurerm_key_vault.this.id
  tenant_id    = each.value.tenant_id
  object_id    = each.value.object_id

  key_permissions     = try(each.value.key_permissions, [])
  secret_permissions  = try(each.value.secret_permissions, [])
  storage_permissions = try(each.value.storage_permissions, [])
}

resource "azurerm_key_vault_secret" "secrets" {
  for_each     = var.secrets
  name         = each.key
  value        = each.value
  key_vault_id = azurerm_key_vault.this.id
}
