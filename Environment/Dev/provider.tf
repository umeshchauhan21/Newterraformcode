terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

  backend "azurerm" {

    storage_account_name = "stg20260118"
    resource_group_name = "my-rg"
    container_name = "tfstate"
    key = "dev.tfstate"
    
  }
}

provider "azurerm" {
features {
  
}

  subscription_id = "492cfc22-1f34-491e-a8e4-5837096ea5f0"
}