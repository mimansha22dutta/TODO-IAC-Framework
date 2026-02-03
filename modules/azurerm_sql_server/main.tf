resource "azurerm_mssql_server" "sqlserver" {
  for_each                     = var.sql_server_config
  name                         = each.value.name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}
