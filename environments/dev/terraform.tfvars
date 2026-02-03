rg_config = {
  "dev_rg1" = {
    name     = "dev-rg-01"
    location = "centralindia"
  }
}

vnet_config = {
  "dev_vnet1" = {
    name          = "dev-vnet-1"
    rg_name       = "dev-rg-01"
    address_space = ["10.0.0.0/16"]
    location      = "centralindia"
  }
}

subnet_config = {
  "dev_subnet1" = {
    name             = "dev-frontend-subnet-1"
    vnet_name        = "dev-vnet-1"
    rg_name          = "dev-rg-01"
    address_prefixes = ["10.0.1.0/24"]
  },
  "dev_subnet2" = {
    name             = "dev-backend-subnet-1"
    vnet_name        = "dev-vnet-1"
    rg_name          = "dev-rg-01"
    address_prefixes = ["10.0.2.0/24"]
  }
}

pip_config = {
  "dev_pip1" = {
    name     = "dev-frontend-pip-1"
    rg_name  = "dev-rg-01"
    location = "centralindia"
  },
  "dev_pip2" = {
    name     = "dev-backend-pip-1"
    rg_name  = "dev-rg-01"
    location = "centralindia"
  }
}

nic_config = {
  "dev_nic1" = {
    name        = "dev-frontend-nic-1"
    rg_name     = "dev-rg-01"
    location    = "centralindia"
    subnet_name = "dev-frontend-subnet-1"
    vnet_name   = "dev-vnet-1"
    pip_name    = "dev-frontend-pip-1"
  },
  "dev_nic2" = {
    name        = "dev-backend-nic-1"
    rg_name     = "dev-rg-01"
    location    = "centralindia"
    subnet_name = "dev-backend-subnet-1"
    vnet_name   = "dev-vnet-1"
    pip_name    = "dev-backend-pip-1"
  }

}

vm_config = {
  "dev_vm1" = {
    name           = "dev-frontend-vm-1"
    rg_name        = "dev-rg-01"
    location       = "centralindia"
    nic_name       = "dev-frontend-nic-1"
    vm_size        = "Standard_B2s_v2"
    admin_username = "adminuser"
    admin_password = "P@ssw0rd1234"
    publisher      = "Canonical"
    offer          = "UbuntuServer"
    sku            = "18.04-LTS"
  },
  "dev_vm2" = {
    name           = "dev-backend-vm-2"
    rg_name        = "dev-rg-01"
    location       = "centralindia"
    nic_name       = "dev-backend-nic-1"
    vm_size        = "Standard_B2s_v2"
    admin_username = "adminuser"
    admin_password = "P@ssw0rd1234"
    publisher      = "Canonical"
    offer          = "UbuntuServer"
    sku            = "18.04-LTS"
  }
}

nsg_config = {
  "dev_nsg1" = {
    name     = "dev-frontend-nsg-1"
    rg_name  = "dev-rg-01"
    location = "centralindia"
  },
  "dev_nsg2" = {
    name     = "dev-backend-nsg-1"
    rg_name  = "dev-rg-01"
    location = "centralindia"
  }
}

nsg_nic_config = {
  "dev_nsg_nic1" = {
    nsg_name = "dev-frontend-nsg-1"
    nic_name = "dev-frontend-nic-1"
    rg_name  = "dev-rg-01"
  },
  "dev_nsg_nic2" = {
    nsg_name = "dev-backend-nsg-1"
    nic_name = "dev-backend-nic-1"
    rg_name  = "dev-rg-01"
  }
}

sql_server_config = {
  "dev_sql_server1" = {
    name                         = "dev-sql-server-1"
    rg_name                      = "dev-rg-01"
    location                     = "centralindia"
    administrator_login          = "sqladmin"
    administrator_login_password = "SqlP@ssw0rd1234"
  }
}

sql_db_config = {
  "dev_sql_db1" = {
    db_name         = "dev-sql-db-1"
    sql_server_name = "dev-sql-server-1"
    rg_name         = "dev-rg-01"
    sku_name        = "S0"
    max_size_gb     = 2
    license_type    = "LicenseIncluded"
    collation       = "SQL_Latin1_General_CP1_CI_AS"
  }
}


