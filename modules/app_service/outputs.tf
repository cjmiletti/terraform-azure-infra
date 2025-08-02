output "app_service_id" {
  value = azurerm_app_service.main.id
}

output "default_hostname" {
  value = azurerm_app_service.main.default_site_hostname
}

output "app_service_plan_id" {
  value = azurerm_app_service_plan.main.id
}
