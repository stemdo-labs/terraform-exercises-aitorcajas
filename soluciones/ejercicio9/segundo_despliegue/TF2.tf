provider "azurerm" {
  features {
    
  }
}

import {
  to = azurerm_storage_account.ejercicio9sa
  id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-acajas-dvfinlab/providers/Microsoft.Storage/storageAccounts/ejercicio9sa"
}

# import {
#   to = azurerm_key_vault.ejercicio9-kv
#   id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-acajas-dvfinlab/providers/Microsoft.KeyVault/vaults/ejercicio9-kv"
# }