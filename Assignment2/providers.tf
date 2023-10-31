terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.78.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mv-rg-backend-tfstate"
    storage_account_name = "backendsay837f7nmfc"
    container_name       = "tfstate"
    key                  = "assignment2.terraform.tfstate"
  }

  required_version = ">= 1.0"

}

provider "azurerm" {
  features {}
}