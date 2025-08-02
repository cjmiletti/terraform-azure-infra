variable "application_name" {
  type        = string
  description = "The name of the application"
}

variable "environment_name" {
  type        = string
  description = "The name of the environment (e.g. dev, prod)"
}

variable "primary_location" {
  type        = string
  default     = "eastus"
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "sku_tier" {
  type        = string
  default     = "Standard"
  description = "Tier for App Service Plan"
}

variable "sku_size" {
  type        = string
  default     = "S1"
  description = "Instance size for App Service Plan"
}

variable "dotnet_version" {
  type        = string
  default     = "v4.0"
  description = "Framework version for App Service"
}

variable "scm_type" {
  type        = string
  default     = "LocalGit"
  description = "Source control type"
}

variable "app_settings" {
  type        = map(string)
  default     = {}
  description = "App settings for the App Service"
}

variable "connection_strings" {
  type = map(object({
    type  = string
    value = string
  }))
  default     = {}
  description = "Database connection strings"
}

variable "tags" {
  type    = map(string)
  default = {}
}
