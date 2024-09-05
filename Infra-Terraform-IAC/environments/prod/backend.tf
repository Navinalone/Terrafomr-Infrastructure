terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "backendstrg"
    container_name       = "prdbackendstate"
    key                  = "prd.tfstate"
  }
}