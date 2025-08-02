variable "server_name" {
  type        = string
  description = "Name of the SQL Server"
}

variable "database_name" {
  type        = string
  description = "Name of the SQL Database"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "administrator_login" {
  type        = string
  description = "SQL admin username"
}

variable "administrator_password" {
  type        = string
  description = "SQL admin password"
  sensitive   = true
}

variable "server_version" {
  type        = string
  default     = "12.0"
  description = "SQL Server version"
}

variable "minimum_tls_version" {
  type        = string
  default     = "1.2"
  description = "Minimum TLS version"
}

variable "collation" {
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
  description = "Database collation"
}

variable "license_type" {
  type        = string
  default     = "LicenseIncluded"
  description = "License type"
}

variable "max_size_gb" {
  type        = number
  default     = 5
  description = "Maximum DB size"
}

variable "read_scale" {
  type        = bool
  default     = false
  description = "Enable read scale-out"
}

variable "sku_name" {
  type        = string
  default     = "S0"
  description = "SKU name for the database"
}

variable "zone_redundant" {
  type        = bool
  default     = false
  description = "Zone redundant?"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}

variable "azuread_administrator" {
  type = object({
    login_username = string
    object_id      = string
  })
  default     = null
  description = "Optional Azure AD administrator block"
}

variable "firewall_rules" {
  type = map(object({
    start_ip_address = string
    end_ip_address   = string
  }))
  default     = {}
  description = "Firewall rules to allow SQL access"
}

variable "extended_auditing" {
  type = object({
    storage_endpoint                        = string
    storage_account_access_key              = string
    storage_account_access_key_is_secondary = bool
    retention_in_days                       = number
  })
  default     = null
  description = "Optional extended auditing configuration"
}
