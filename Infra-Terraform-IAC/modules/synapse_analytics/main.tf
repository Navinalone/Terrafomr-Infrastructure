
resource "azurerm_synapse_workspace" "synapse" {
  name                = var.workspace_name
  resource_group_name = var.rg_name
  location            = var.location
  storage_data_lake_gen2_filesystem_id = var.adls_id
  sql_administrator_login = var.sql_admin_login
  sql_administrator_login_password = var.sql_admin_password


  identity {
    type = "SystemAssigned"
  }
   tags = var.tags
}


resource "azurerm_synapse_firewall_rule" "synapseFirewall" {
  name                 = "AllowAll"
  synapse_workspace_id = azurerm_synapse_workspace.synapse.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}

resource "azurerm_synapse_spark_pool" "example" {
  name                 = var.sparkpoolname
  synapse_workspace_id = azurerm_synapse_workspace.synapse.id
  node_size_family     = "MemoryOptimized"
  node_size            = "Small"
  cache_size           = 100
  spark_version = "3.4"
  auto_scale {
    max_node_count = 10
    min_node_count = 3
  }

  auto_pause {
    delay_in_minutes = 15
  }
 tags = var.tags
}