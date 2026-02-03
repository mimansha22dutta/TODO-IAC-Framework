variable "rg_config" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet_config" {
  type = map(object({
    name          = string
    rg_name       = string
    address_space = list(string)
    location      = string
  }))
}

variable "subnet_config" {
  type = map(object({
    name             = string
    vnet_name        = string
    rg_name          = string
    address_prefixes = list(string)
  }))
}

variable "pip_config" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}

variable "nic_config" {
  type = map(object({
    name        = string
    rg_name     = string
    location    = string
    subnet_name = string
    vnet_name   = string
    pip_name    = string
  }))
}

variable "vm_config" {
  type = map(object({
    name           = string
    rg_name        = string
    location       = string
    nic_name       = string
    vm_size        = string
    admin_username = string
    admin_password = string
    publisher      = string
    offer          = string
    sku            = string
  }))
}

variable "nsg_config" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}

variable "nsg_nic_config" {
  type = map(object({
    nsg_name = string
    nic_name = string
    rg_name  = string
  }))
}

variable "sql_server_config" {
  type = map(object({
    name                         = string
    rg_name                      = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
  }))
}

variable "sql_db_config" {
  type = map(object({
    db_name         = string
    rg_name         = string
    sql_server_name = string
    sku_name        = string
    max_size_gb     = number
    license_type    = string
    collation       = string
  }))
}
