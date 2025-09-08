terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.0"
        }
    }
    required_version = ">= 1.0.0"
    backend "azurerm" {
        resource_group_name  = "rg-test-rishu"
        storage_account_name = "terraformpipelineclass"
        container_name       = "container-dksh"
        key                  = "dev.terraform.tfstate"
      
    }
}
provider "azurerm" {
    features {}
    subscription_id = var.sub_id
  
}