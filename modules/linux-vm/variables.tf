variable "name" {
  type        = string
  description = "Name of the Linux VM"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to place the VM in"
}

variable "public_ip_id" {
  type        = string
  default     = null
  description = "Optional public IP resource ID"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2ms"
  description = "VM size"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH key content"
}

variable "os_disk_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS disk type"
}

variable "image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
  description = "Image reference for the VM"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}
