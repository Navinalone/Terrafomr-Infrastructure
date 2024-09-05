output "openaiclient_id" {
  description = "The client ID of the Azure AD application."
  value       = azuread_application.openAI.application_id
}

output "openaiclient_secret" {
  description = "The client secret of the Azure AD application."
  value       = azuread_application_password.openAI.value
}

output "powerbiclient_id" {
  description = "The client ID of the Azure AD application."
  value       = azuread_application.powerBIapp.application_id
}

output "powerbiclient_secret" {
  description = "The client secret of the Azure AD application."
  value       = azuread_application_password.powerBIapp.value
}