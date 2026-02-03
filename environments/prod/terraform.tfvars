rg_config = {
  "prod_rg1" = {
    name     = "prod-rg-1"
    location = "centralindia"
  },
  "prod_rg2" = {
    name     = "prod-rg-2"
    location = "West US"
  }
}

vnet_config = {
  "prod_vnet1" = {
    name          = "prod-vnet-1"
    rg_name       = "prod-rg-1"
    address_space = ["10.0.0.0/16"]
    location      = "centralindia"
  }
}

subnet_config = {
  "prod_subnet1" = {
    name             = "prod-subnet-1"
    vnet_name        = "prod-vnet-1"
    rg_name          = "prod-rg-1"
    address_prefixes = ["10.0.1.0/24"]
  }
}

pip_config = {
  "prod_pip1" = {
    name     = "prod-pip-1"
    rg_name  = "prod-rg-1"
    location = "centralindia"
  }
}

nic_config = {
  "prod_nic1" = {
    name        = "prod-nic-1"
    rg_name     = "prod-rg-1"
    location    = "centralindia"
    subnet_name = "prod-subnet-1"
    vnet_name   = "prod-vnet-1"
    pip_name    = "prod-pip-1"
  }
}

vm_config = {
  "prod_vm1" = {
    name           = "prod-vm-1"
    rg_name        = "prod-rg-1"
    location       = "centralindia"
    nic_name       = "prod-nic-1"
    vm_size        = "Standard_B2s_v2"
    admin_username = "adminuser"
    admin_password = "P@ssw0rd1234"
    publisher      = "Canonical"
    offer          = "UbuntuServer"
    sku            = "18.04-LTS"
  }
}

nsg_config = {
    "prod_nsg1" = {
        name     = "prod-nsg-1"
        rg_name  = "prod-rg-1"
        location = "centralindia"
    }
}

nsg_nic_config = {
    "prod_nsg_nic1" = {
        nsg_name = "prod-nsg-1"
        nic_name = "prod-nic-1"
        rg_name  = "prod-rg-1"   
    }
}

sql_server_config = {
  "prod_sql_server1" = {
    name                         = "prod-sql-server-1"
    rg_name                      = "prod-rg-1"
    location                     = "centralindia"
    administrator_login          = "sqladmin"
    administrator_login_password = "SqlP@ssw0rd1234"
  }
}

sql_db_config = {
  "prod_sql_db1" = {
    name          = "prod-sql-db-1"
    sql_server_name = "prod-sql-server-1"
    rg_name       = "prod-rg-1"
    sku_name      = "S0"
    max_size_gb   = 2
    license_type = "LicenseIncluded"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
  }
}


