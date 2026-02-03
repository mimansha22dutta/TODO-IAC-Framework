data "azurerm_network_interface" "datanic" {
  for_each =  var.vm_config
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-password"
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}

# data "azurerm_key_vault" "kv" {
#   name                = "mykeyvault"
#   resource_group_name = "some-resource-group"
# }

# data "azurerm_key_vault_secret" "vm_username" {
#   name         = "vm-username"
#   key_vault_id = data.azurerm_key_vault.kv[each.key].id
# }