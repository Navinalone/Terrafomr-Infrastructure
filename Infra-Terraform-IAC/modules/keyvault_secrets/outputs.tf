output "openaiclient_id" {
  description = "The client ID of the Azure AD application."
  value       = azurerm_key_vault_secret.openaiclient_id.id
}

output "openaiclient_secret" {
  description = "The client secret of the Azure AD application."
  value       = azurerm_key_vault_secret.openaiclient_secret.id
}

output "powerbiclient_id" {
  description = "The client ID of the Azure AD application."
  value       = azurerm_key_vault_secret.powerbiclient_id.id
}

output "powerbiclient_secret" {
  description = "The client secret of the Azure AD application."
  value       = azurerm_key_vault_secret.powerbiclient_secret.id
}