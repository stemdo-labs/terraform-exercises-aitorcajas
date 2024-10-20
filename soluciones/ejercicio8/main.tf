terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
  # backend "azurerm" {
  #   storage_account_name = "staacajasdvfinlab"
  #   container_name = "terraform-state"
  #   key = "terraform.tfstate"
  #   resource_group_name = "rg-acajas-dvfinlab"
  # }
}

provider "azurerm" {
  features {
    
  }
}

module "sa" {
  source = "./modules/sa"
  existent_resource_group_name = var.existent_resource_group_name
  name_sa = var.name_sa
  name_container = var.name_container
}