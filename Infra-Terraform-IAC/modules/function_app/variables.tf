variable "function_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "app_service_plan_id" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "storage_account_access_key" {
  type = string
}
variable "tags" {
  type = map(string)
  description = "Tags to be applied to the resources."
  default = {}
}

