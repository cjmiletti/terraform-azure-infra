resource "azurerm_mssql_server" "this" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_password
  minimum_tls_version          = var.minimum_tls_version
  tags                         = var.tags

  dynamic "azuread_administrator" {
    for_each = var.azuread_administrator != null ? [var.azuread_administrator] : []
    content {
      login_username = azuread_administrator.value.login_username
      object_id      = azuread_administrator.value.object_id
    }
  }
}

resource "azurerm_mssql_database" "this" {
  name           = var.database_name
  server_id      = azurerm_mssql_server.this.id
  collation      = var.collation
  license_type   = var.license_type
  max_size_gb    = var.max_size_gb
  read_scale     = var.read_scale
  sku_name       = var.sku_name
  zone_redundant = var.zone_redundant
  tags           = var.tags

  dynamic "extended_auditing_policy" {
    for_each = var.extended_auditing != null ? [var.extended_auditing] : []
    content {
      storage_endpoint                        = extended_auditing.value.storage_endpoint
      storage_account_access_key              = extended_auditing.value.storage_account_access_key
      storage_account_access_key_is_secondary = extended_auditing.value.storage_account_access_key_is_secondary
      retention_in_days                       = extended_auditing.value.retention_in_days
    }
  }
}

resource "azurerm_mssql_firewall_rule" "rules" {
  for_each         = var.firewall_rules
  name             = each.key
  server_id        = azurerm_mssql_server.this.id
  start_ip_address = each.value.start_ip_address
  end_ip_address   = each.value.end_ip_address
}
