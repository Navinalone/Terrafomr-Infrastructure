variable "workspace_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "adls_id" {
  type = string
}

variable "sql_admin_login" {
  type = string
}

variable "sql_admin_password" {
  type = string
}

variable "sparkpoolname" {
  type = string
}
variable "tags" {
  type = map(string)
  description = "Tags to be applied to the resources."
  default = {}
}