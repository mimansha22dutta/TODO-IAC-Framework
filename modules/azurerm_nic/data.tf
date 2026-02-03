data "azurerm_subnet" "datasubnet" {
  for_each = var.nic_config
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "datapublicip" {
  for_each = var.nic_config
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}