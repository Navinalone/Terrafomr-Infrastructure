variable "key_vault_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tenant_id" {
  type = string
}
variable "function_app_identity_id" {
  description = "Managed Identity ID of the Function App."
  type        = string
}

variable "tags" {
  type = map(string)
  description = "Tags to be applied to the resources."
  default = {}
}