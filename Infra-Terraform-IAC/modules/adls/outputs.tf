output "storage_account_name" {
  value = azurerm_storage_account.adls.name
}

output "storage_data_lake_gen2_filesystem" {
  value = azurerm_storage_data_lake_gen2_filesystem.Filestest.id
}