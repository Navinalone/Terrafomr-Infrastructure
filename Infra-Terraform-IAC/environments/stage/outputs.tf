# outputs.tf
output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "synapse_workspace_name" {
  value = module.synapse_analytics.workspace_name
}

output "adls_account_name" {
  value = module.adls.storage_account_name
}

# # Add more outputs as needed
# output "function_app_identity_id" {
#   value = module.function_app.identity_id
# }

# output "key_vault_id" {
#   value = module.key_vault.key_vault_id
# }

# output "app_registration_id" {
#   value = module.app_registration.app_id
# }

# output "client_secret" {
#   value = module.app_registration.client_secret
#   sensitive = true
# }



