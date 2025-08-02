variable "application_name" {
  type        = string
  description = "The name of the application"
}

variable "environment_name" {
  type        = string
  description = "The environment (e.g., dev, prod)"
}

variable "primary_location" {
  type        = string
  default     = "eastus"
  description = "Azure region"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for the resource group"
}
