variable "name" {
  type        = string
  description = "Name of the Key Vault"
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

variable "tenant_id" {
  type        = string
  description = "Azure AD tenant ID"
}

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "SKU for Key Vault"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "Days to retain soft deleted keys/secrets"
}

variable "purge_protection_enabled" {
  type        = bool
  default     = false
  description = "Enable purge protection?"
}

variable "enabled_for_disk_encryption" {
  type        = bool
  default     = false
  description = "Enable for disk encryption use cases"
}

variable "access_policies" {
  description = "Access policy definitions"
  type = map(object({
    tenant_id           = string
    object_id           = string
    key_permissions     = optional(list(string), [])
    secret_permissions  = optional(list(string), [])
    storage_permissions = optional(list(string), [])
  }))
  default = {}
}

variable "secrets" {
  description = "Key Vault secrets to create"
  type        = map(string)
  default     = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}
