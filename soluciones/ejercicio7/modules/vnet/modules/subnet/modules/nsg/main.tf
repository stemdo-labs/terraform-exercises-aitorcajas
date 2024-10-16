resource "azurerm_network_security_group" "nsg" {
  name                = var.name_nsg
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = var.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}