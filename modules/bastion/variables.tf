variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network containing the AzureBastionSubnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "CIDR block for AzureBastionSubnet (e.g. [\"192.168.1.224/27\"])"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP used by Bastion"
}

variable "bastion_name" {
  type        = string
  description = "Name of the Bastion host"
}

variable "tags" {
  type    = map(string)
  default = {}
}
