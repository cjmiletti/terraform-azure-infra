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
