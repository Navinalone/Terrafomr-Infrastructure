variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "synapse_workspace_name" {
  type = string
}

variable "adls_name" {
  type = string
}

variable "function_name" {
  type = string
}

variable "openai_name" {
  type = string
}

variable "logic_app_name" {
  type = string
}

variable "key_vault_name" {
  type = string
}

variable "tenant_id" {
  type = string
}
variable "sql_admin_login" {
  type = string
}

variable "sql_admin_password" {
  type = string
}

variable "func_storage_account_name" {
  type = string
}

variable "appservicename" {
  type = string
}

variable "sparkpoolname" {
  type = string
}

variable "ai_appname" {
  description = "Name of the Azure App Registration."
  type        = string
}

variable "powerbi_appname" {
  description = "Name of the Azure App Registration."
  type        = string
}

variable "tags" {
  type = map(string)
  description = "Tags to be applied to the resources."
  default = {}
}

# variable "backendkey" {
#   type = string
# }