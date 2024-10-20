terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "modulo-weekly-exrcise" {
  source = "./modules/weekly"
  vnet_name = var.vnet_name
  rg_name = var.rg_name
  subnet_name = var.subnet_name
  nsg_name = var.nsg_name
  public_ip_name = var.public_ip_name
  vm_count = var.vm_count
  ni_name = var.ni_name
  lb_name = var.lb_name
  vm_name = var.vm_name
}