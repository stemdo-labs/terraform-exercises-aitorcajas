terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "acajas"
  resource_group_name      = "rg-acajas-dvfinlab"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}