output "function_name" {
  value = azurerm_function_app.function.name
}

output "functionapp_identity_id" {
  value = azurerm_function_app.function.identity[0].principal_id
}