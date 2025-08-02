variable "application_name" {
  type        = string
  description = "App prefix for naming"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, prod)"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "dns_servers" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "subnets" {
  description = "List of subnets to create"
  type = list(object({
    name                      = string
    address_prefixes          = list(string)
    network_security_group_id = optional(string)
    delegation = optional(list(object({
      name         = string
      service_name = string
      actions      = list(string)
    })))
  }))
}
