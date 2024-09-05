resource "azurerm_app_service_plan" "appplan" {
  name                = var.appservicename
  resource_group_name = var.rg_name
  location            = var.location
  tags = var.tags
  sku {
    tier = "Standard"
    size = "S1"
  }
}