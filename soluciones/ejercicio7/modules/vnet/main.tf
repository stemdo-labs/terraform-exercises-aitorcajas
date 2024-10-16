data "azurerm_resource_group" "existent_rg" {
    name = var.existent_resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    address_space = var.vnet_address_space
    location = var.location
    resource_group_name = data.azurerm_resource_group.existent_rg.name
    tags = merge(
        {
            owner = var.owner_tag
            environment = var.environment_tag
        },
        var.vnet_tags
    )
}

module "subnets" {
  source = "./modules/subnet"
  vnet_name = var.vnet_name
  resource_group_name = var.existent_resource_group_name
  subnets = var.subnets
  name_nsg = var.name_nsg
  location = var.location
}