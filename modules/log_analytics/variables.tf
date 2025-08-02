variable "name" {
  type        = string
  description = "Name of the Log Analytics Workspace"
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

variable "sku" {
  type        = string
  default     = "PerGB2018"
  description = "Pricing tier for Log Analytics"
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = "Data retention period in days"
}

variable "tags" {
  type    = map(string)
  default = {}
}
