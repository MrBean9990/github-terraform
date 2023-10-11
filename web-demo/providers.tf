terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.73.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mv-rg-backend-tfstate"
    storage_account_name = "backendsay837f7nmfc"
    container_name       = "tfstate"
    key                  = "webdemo.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}