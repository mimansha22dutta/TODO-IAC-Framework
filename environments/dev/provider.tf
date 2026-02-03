terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatedevbackend"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options

  subscription_id = "86435d4d-556b-4d8e-bca6-1128180be503"
   features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}