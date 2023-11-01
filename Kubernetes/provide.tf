terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"   
      version = "3.76.0"
    }
    azapi = {
      source  = "azure/azapi" 
      version = "~>1.5"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  }
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  
  subscription_id   = "xxxxxxx-xxxxx-xxxxx-xxxxxxxx"
  tenant_id         = "xxxxx-xxxxxx-xxxxxx-xxxxxx"
  client_id         = "<service_principal_appid>"
  client_secret     = "<service_principal_password>"
}



