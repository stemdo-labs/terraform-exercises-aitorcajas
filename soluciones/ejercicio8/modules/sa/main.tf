resource "azurerm_storage_container" "container" {
  name                 = var.name_container
  storage_account_name = var.name_sa
}