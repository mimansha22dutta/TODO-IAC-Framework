resource "azurerm_mssql_database" "sql_db" {
  for_each     = var.sql_db_config
  name         = each.value.db_name
  server_id    = data.azurerm_mssql_server.dataserver[each.key].id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
}

