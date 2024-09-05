variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "appservicename" {
  type = string
}
variable "tags" {
  type = map(string)
  description = "Tags to be applied to the resources."
  default = {}
}