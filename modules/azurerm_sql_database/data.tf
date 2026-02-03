data "azurerm_mssql_server" "dataserver" {
  for_each            = var.sql_db_config
  name                = each.value.sql_server_name
  resource_group_name = each.value.rg_name
}
