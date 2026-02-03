module "resource_group" {
  source    = "../../modules/azurerm_resource_group"
  rg_config = var.rg_config
}

module "virtual_network" {
  depends_on  = [module.resource_group]
  source      = "../../modules/azurerm_virtual_network"
  vnet_config = var.vnet_config
}

module "subnet" {
  depends_on    = [module.virtual_network]
  source        = "../../modules/azurerm_subnet"
  subnet_config = var.subnet_config
}


module "pip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  pip_config = var.pip_config
}

module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../../modules/azurerm_nic"
  nic_config = var.nic_config
}

module "virtual_machine" {
  depends_on = [module.nic]
  source     = "../../modules/azurerm_virtual_machine"
  vm_config  = var.vm_config
}

module "nsg" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_network_security_group"
  nsg_config = var.nsg_config
}

module "nsg_association" {
  depends_on     = [module.nic, module.nsg]
  source         = "../../modules/azurem_network_security_group_association"
  nsg_nic_config = var.nsg_nic_config
}

module "sql_server" {
  depends_on        = [module.resource_group]
  source            = "../../modules/azurerm_sql_server"
  sql_server_config = var.sql_server_config
}

module "sql_database" {
  depends_on    = [module.sql_server, module.sql_server]
  source        = "../../modules/azurerm_sql_database"
  sql_db_config = var.sql_db_config
}

