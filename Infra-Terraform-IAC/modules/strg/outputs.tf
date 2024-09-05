output "function_storage_account_name" {
  value = azurerm_storage_account.functionstrg.name
}

output "function_storage_account_access_key" {
  value = azurerm_storage_account.functionstrg.primary_access_key
}