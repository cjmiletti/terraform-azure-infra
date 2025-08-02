resource "azurerm_app_service_plan" "main" {
  name                = "asp-${var.application_name}-${var.environment_name}"
  location            = var.primary_location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }

  tags = var.tags
}

resource "azurerm_app_service" "main" {
  name                = "app-${var.application_name}-${var.environment_name}"
  location            = var.primary_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
    dotnet_framework_version = var.dotnet_version
    scm_type                 = var.scm_type
  }

  app_settings = var.app_settings

  dynamic "connection_string" {
    for_each = var.connection_strings
    content {
      name  = connection_string.key
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  tags = var.tags
}
