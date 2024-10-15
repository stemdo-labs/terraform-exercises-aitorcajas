terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

module "vnet" {
  source                       = "./modules/vnet"
  vnet_name                    = var.vnet_name
  vnet_address_space           = var.vnet_address_space
  location                     = var.location
  owner_tag                    = var.owner_tag
  existent_resource_group_name = var.existent_resource_group_name
  environment_tag              = var.environment_tag
  vnet_tags                    = var.vnet_tags
}
