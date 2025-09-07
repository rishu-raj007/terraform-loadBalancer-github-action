terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.0"
        }
    }
    required_version = ">= 1.0.0"
    backend "azurerm" {
        resource_group_name  = "tfstate-rg"
        storage_account_name = "tfstate202410"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
      
    }
}