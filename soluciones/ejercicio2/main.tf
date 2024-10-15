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

data "azurerm_resource_group" "existent_rg" {
    name = var.existent_resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    address_space = var.vnet_address_space
    location = var.location
    resource_group_name = data.azurerm_resource_group.existent_rg.name
}