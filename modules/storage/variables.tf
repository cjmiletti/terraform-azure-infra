variable "name" {
  type        = string
  description = "Name of the storage account"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "replication_type" {
  type    = string
  default = "LRS"
}

variable "access_tier" {
  type    = string
  default = "Hot"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "enable_network_rules" {
  type        = bool
  default     = false
  description = "Enable IP and subnet restrictions"
}

variable "network_rules" {
  type = object({
    default_action = string
    ip_rules       = list(string)
    subnet_ids     = list(string)
  })
  default = {
    default_action = "Deny"
    ip_rules       = []
    subnet_ids     = []
  }
}
