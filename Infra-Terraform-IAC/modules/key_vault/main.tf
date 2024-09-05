resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  resource_group_name = var.rg_name
  location            = var.location
  sku_name            = "standard"
  enabled_for_disk_encryption = true
  purge_protection_enabled    = false
  soft_delete_retention_days  = 7
  tenant_id           = var.tenant_id

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.function_app_identity_id

    # Access permissions for the Function App
    secret_permissions = [
      "Get", 
      "List"
    ]

    key_permissions = [
      "Get", 
      "List"
    ]
  }

 tags = var.tags
}

# Fetch current tenant details
data "azurerm_client_config" "current" {}
