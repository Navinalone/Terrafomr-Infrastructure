
variable "openaiclient_id" {
  description = "The client ID of the Azure AD application."
  type        = string
}

variable "openaiclient_secret" {
  description = "The client secret of the Azure AD application."
  type        = string
}
variable "powerbiclient_id" {
  description = "The client ID of the Azure AD application."
  type        = string
}

variable "powerbiclient_secret" {
  description = "The client secret of the Azure AD application."
  type        = string
}


variable "key_vault_id" {
  description = "The ID of the Azure Key Vault."
  type        = string
}

variable "ai_appname" {
  description = "Name of the Azure App Registration."
  type        = string
}

variable "powerbi_appname" {
  description = "Name of the Azure App Registration."
  type        = string
}


