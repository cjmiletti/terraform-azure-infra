variable "scope" {
  type        = string
  description = "Scope of the role assignment"
}

variable "role" {
  type        = string
  description = "Role definition name (e.g. Reader)"
}

variable "principal_id" {
  type        = string
  description = "Object ID of the principal"
}
