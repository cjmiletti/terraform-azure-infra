resource "azurerm_storage_account" "this" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  account_tier               = var.account_tier
  account_replication_type   = var.replication_type
  access_tier                = var.access_tier
  https_traffic_only_enabled = true

  min_tls_version = "TLS1_2"
  tags            = var.tags

  dynamic "network_rules" {
    for_each = var.enable_network_rules ? [1] : []
    content {
      default_action             = var.network_rules.default_action
      ip_rules                   = var.network_rules.ip_rules
      virtual_network_subnet_ids = var.network_rules.subnet_ids
    }
  }
}
