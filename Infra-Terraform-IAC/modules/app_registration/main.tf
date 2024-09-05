data "azuread_client_config" "current" {}

# Open AI service principle 

resource "azuread_application" "openAI" {
    
    display_name     = var.ai_appname
    owners           = [data.azuread_client_config.current.object_id]

}

resource "azuread_application_password" "openAI" {
  application_id        = azuread_application.openAI.application_id
  display_name          = "Terraform Managed Password"
  end_date              = "2099-01-01T01:02:03Z"
}

resource "azuread_service_principal" "openAI" {
  client_id                    = azuread_application.openAI.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}


#PowerBI service principle 


resource "azuread_application" "powerBIapp" {
    
    display_name     = var.powerbi_appname
    owners           = [data.azuread_client_config.current.object_id]

}

resource "azuread_application_password" "powerBIapp" {
  application_id        = azuread_application.powerBIapp.application_id
  display_name          = "Terraform Managed Password"
  end_date              = "2099-01-01T01:02:03Z"
}

resource "azuread_service_principal" "powerBIapp" {
  client_id                    = azuread_application.powerBIapp.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

}


