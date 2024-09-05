
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "05c8e0ab-2d2f-453f-a0e8-e46a8cc449cc"

  # Optionally, you can also add these properties if needed
  tenant_id       = "273f45e0-e235-4dde-ab7a-fd3e631a88e0"
  # client_id       = "your-client-id"
  # client_secret   = "your-client-secret"
}

data "azuread_client_config" "current" {}


module "app_registration" {
  source = "../../modules/app_registration"
  ai_appname = var.ai_appname
  powerbi_appname = var.powerbi_appname
}

module "resource_group" {
  source = "../../modules/resource_group"
  rg_name = var.rg_name
  location = var.location
  tags = var.tags
}
module "adls" {
  source = "../../modules/adls"
  storage_account_name = var.adls_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  tags = var.tags
}

module "strg" {
  source = "../../modules/strg"
  location = module.resource_group.location
  rg_name = module.resource_group.rg_name
  storage_account_name = var.func_storage_account_name
  tags = var.tags
  
}

module "synapse_analytics" {
  source = "../../modules/synapse_analytics"
  workspace_name = var.synapse_workspace_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  adls_id = module.adls.storage_data_lake_gen2_filesystem
  sql_admin_login = var.sql_admin_login
  sql_admin_password = var.sql_admin_password
  sparkpoolname = var.sparkpoolname
  tags = var.tags
}

module "appservice" {
  source = "../../modules/appservice"
  appservicename = var.appservicename
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  tags = var.tags
}

module "function_app" {
  source = "../../modules/function_app"
  function_name = var.function_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  app_service_plan_id = module.appservice.appservice_plan_id
  storage_account_name = module.strg.function_storage_account_name
  storage_account_access_key = module.strg.function_storage_account_access_key
  tags = var.tags
}

module "openai" {
  source = "../../modules/openai"
  openai_name = var.openai_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  tags = var.tags
}

module "logic_app" {
  source = "../../modules/logic_app"
  logic_app_name = var.logic_app_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  tags = var.tags
}

module "key_vault" {
  source = "../../modules/key_vault"
  key_vault_name = var.key_vault_name
  rg_name = module.resource_group.rg_name
  location = module.resource_group.location
  tenant_id = var.tenant_id
  function_app_identity_id = module.function_app.functionapp_identity_id
  tags = var.tags
}

module "keyvault_secrets" {
  source = "../../modules/keyvault_secrets"
  key_vault_id  = module.key_vault.key_vault_id
  ai_appname = var.ai_appname
  powerbi_appname = var.powerbi_appname
  openaiclient_id = module.app_registration.openaiclient_id
  openaiclient_secret = module.app_registration.openaiclient_secret
  powerbiclient_id = module.app_registration.powerbiclient_id
  powerbiclient_secret = module.app_registration.powerbiclient_secret
  
}