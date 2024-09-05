resource "azurerm_cognitive_account" "openai" {
  name                = var.openai_name
  resource_group_name = var.rg_name
  location            = var.location
  tags = var.tags
  kind                = "OpenAI"
  sku_name = "S0"
    identity {
    type = "SystemAssigned"
  }
}
