terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

/*provider "azurerm" {
  features {}
}*/

/*backend "azurerm" {
  storage_account_name = "keyvaultst"
  container_name       = "keyvaultst"
  key                  = "ektech-azure-key-vault/terraform.tfstate"
  resource_group_name  = "key-vault-resource"
}*/


provider "azurerm" {
  subscription_id = var.subscription_id
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}