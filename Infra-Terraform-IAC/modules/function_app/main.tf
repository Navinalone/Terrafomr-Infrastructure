
resource "azurerm_function_app" "function" {
  name                = var.function_name
  resource_group_name = var.rg_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id
  storage_account_name = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key

    identity {
    type = "SystemAssigned"
  }
    site_config {
    always_on = true
  }

  tags = var.tags
}
