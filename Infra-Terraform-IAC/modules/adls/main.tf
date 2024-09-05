resource "azurerm_storage_account" "adls" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
  tags = var.tags

}

resource "azurerm_storage_data_lake_gen2_filesystem" "Filestest" {
  name               = "test"
  storage_account_id = azurerm_storage_account.adls.id
}
