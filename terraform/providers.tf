#####################################################################################################
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "mv-rg-backend-tfstate"
    storage_account_name = "backendsay837f7nmfc"
    container_name       = "tfstate"
    key                  = "rg.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}



