# Define Resource Group
resource "azurerm_resource_group" "example" {
  name     = "key-vault-resource"
  location = "East US 2"
}

# Data source for the current client configuration
data "azurerm_client_config" "current" {}

# Define Key Vault
resource "azurerm_key_vault" "example" {
  name                       = "key-QA-resource"
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 10

  # Access Policy (example, allowing current user)
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]

    key_permissions = [
      "Get",
      "List",
      "Create",
      "Update",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]

    certificate_permissions = [
      "Get",
      "List",
      "Delete",
      "Create",
      "Import",
      "Update",
      "ManageContacts",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers",
      "ManageIssuers",
      "Recover",
      "Purge"
    ]
  }
}

resource "azurerm_key_vault_secret" "aks_windows_secret" {
  name         = "aks-windows-secret"
  value        = var.aks_windows_secret_value
  key_vault_id = azurerm_key_vault.example.id
}



# Define Resource Group
resource "azurerm_resource_group" "example2" {
  name     = "dev-resource"
  location = "East US 2"
}

# Define Storage Account
resource "azurerm_storage_account" "example" {
  name                     = "keyvaultst" # Storage account names must be unique globally and be between 3 and 24 characters in length and use numbers and lower-case letters only.
  resource_group_name      = azurerm_resource_group.example2.name
  location                 = azurerm_resource_group.example2.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Locally redundant storage

  tags = {
    environment = "QA"
  }
}

# Define Storage Container
resource "azurerm_storage_container" "example" {
  name                  = "keyvaultst"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private" # Other options are "container" and "blob"
}

