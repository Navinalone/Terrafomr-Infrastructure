resource "azurerm_key_vault_secret" "openaiclient_id" {
  name         = "${var.ai_appname}-client-id"
  value        = var.openaiclient_id
  key_vault_id = var.key_vault_id
  content_type = "Client ID"
}

resource "azurerm_key_vault_secret" "openaiclient_secret" {
  name         = "${var.ai_appname}-client-secret"
  value        = var.openaiclient_secret
  key_vault_id = var.key_vault_id
  content_type = "Client Secret"
}


resource "azurerm_key_vault_secret" "powerbiclient_id" {
  name         = "${var.powerbi_appname}-client-id"
  value        = var.powerbi_appname
  key_vault_id = var.key_vault_id
  content_type = "Client ID"
}

resource "azurerm_key_vault_secret" "powerbiclient_secret" {
  name         = "${var.powerbi_appname}-client-secret"
  value        = var.powerbiclient_secret
  key_vault_id = var.key_vault_id
  content_type = "Client Secret"
}