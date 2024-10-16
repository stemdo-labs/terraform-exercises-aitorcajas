resource "azurerm_subnet" "subnet" {
  count = var.subnets
  name                 = "subnet${count.index+1}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.${count.index+1}.0/24"]
}

output "subnet_list" {
  value = azurerm_subnet.subnet
}