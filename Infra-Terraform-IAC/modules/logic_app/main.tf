resource "azurerm_logic_app_workflow" "logic_app" {
  name                = var.logic_app_name
  resource_group_name = var.rg_name
  location            = var.location
  tags = var.tags
}

resource "azurerm_logic_app_action_custom" "example" {
  name         = "example-action"
  logic_app_id = azurerm_logic_app_workflow.logic_app.id

  body = <<BODY
{
    "description": "A variable to configure the auto expiration age in days. Configured in negative number. Default is -30 (30 days old).",
    "inputs": {
        "variables": [
            {
                "name": "ExpirationAgeInDays",
                "type": "Integer",
                "value": -30
            }
        ]
    },
    "runAfter": {},
    "type": "InitializeVariable"
}
BODY

}
