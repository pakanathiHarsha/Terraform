terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}

 resource "azurerm_storage_account" "terraformp" {
  name                     = "terraformp" 
  resource_group_name      = "terraform"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
 }