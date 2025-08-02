variable "application_name" {
  type        = string
  description = "The name of the application"
}

variable "environment_name" {
  type        = string
  description = "The environment (e.g. dev, stage, prod)"
}

variable "primary_location" {
  type        = string
  description = "Azure region where resources will be created"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "client_id" {
  type        = string
  description = "Azure client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret"
  sensitive   = true
}
