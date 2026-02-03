data "azurerm_network_interface" "datanic" {
  for_each            = var.nsg_nic_config
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}

data "azurerm_network_security_group" "datansg" {
  for_each            = var.nsg_nic_config
  name                = each.value.nsg_name
  resource_group_name = each.value.rg_name
}
