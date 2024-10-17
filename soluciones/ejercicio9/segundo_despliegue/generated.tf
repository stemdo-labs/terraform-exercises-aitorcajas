# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-acajas-dvfinlab/providers/Microsoft.KeyVault/vaults/ejercicio9-kv"
# resource "azurerm_key_vault" "ejercicio9-kv" {
#   access_policy                   = []
#   enable_rbac_authorization       = false
#   enabled_for_deployment          = false
#   enabled_for_disk_encryption     = true
#   enabled_for_template_deployment = false
#   location                        = "westeurope"
#   name                            = "ejercicio9-kv"
#   public_network_access_enabled   = true
#   purge_protection_enabled        = false
#   resource_group_name             = "rg-acajas-dvfinlab"
#   sku_name                        = "standard"
#   soft_delete_retention_days      = 7
#   tags                            = {}
#   tenant_id                       = "2835cee8-01b5-4561-b27c-2027631bcfe1"
#   network_acls {
#     bypass                     = "AzureServices"
#     default_action             = "Allow"
#     ip_rules                   = []
#     virtual_network_subnet_ids = []
#   }
# }

# __generated__ by Terraform
resource "azurerm_storage_account" "ejercicio9sa" {
  access_tier                       = "Hot"
  account_kind                      = "StorageV2"
  account_replication_type          = "LRS"
  account_tier                      = "Standard"
  allow_nested_items_to_be_public   = true
  allowed_copy_scope                = null
  cross_tenant_replication_enabled  = false
  default_to_oauth_authentication   = false
  dns_endpoint_type                 = "Standard"
  edge_zone                         = null
  https_traffic_only_enabled        = true
  infrastructure_encryption_enabled = false
  is_hns_enabled                    = false
  large_file_share_enabled          = false
  local_user_enabled                = true
  location                          = "westeurope"
  min_tls_version                   = "TLS1_2"
  name                              = "ejercicio9sa"
  nfsv3_enabled                     = false
  public_network_access_enabled     = true
  queue_encryption_key_type         = "Service"
  resource_group_name               = "rg-acajas-dvfinlab"
  sftp_enabled                      = false
  shared_access_key_enabled         = true
  table_encryption_key_type         = "Service"
  tags                              = {}
  blob_properties {
    change_feed_enabled           = false
    change_feed_retention_in_days = 7
    default_service_version       = null
    last_access_time_enabled      = false
    versioning_enabled            = false
  }
  queue_properties {
    hour_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = jsonencode(1)
    }
    logging {
      delete                = false
      read                  = false
      retention_policy_days = 7
      version               = jsonencode(1)
      write                 = false
    }
    minute_metrics {
      enabled               = false
      include_apis          = false
      retention_policy_days = 7
      version               = jsonencode(1)
    }
  }
  share_properties {
    retention_policy {
      days = 7
    }
  }
}
