resource "azurerm_subnet" "subnet" {
  count = var.subnets
  name                 = "subnet${count.index+1}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.${count.index+1}.0/24"]
}

module "nsg" {
  count = var.subnets > 0 ? var.subnets : 0
  source = "./modules/nsg"
  name_nsg = var.name_nsg
  resource_group_name  = var.resource_group_name
  location = var.location
  id = azurerm_subnet.subnet[0].id
}