resource "azurerm_public_ip" "pip" {
  for_each            = var.pip_config
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  sku                 = "Standard"
  allocation_method   = "Static"
}
