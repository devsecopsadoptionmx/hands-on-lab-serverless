terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.43.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.75.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }

  backend "local" {}
  # backend "azurerm" {}
}

provider "azurerm" {
  features {}
  
  # Setting this to true will skip the Azure Resource Provider registration
  # which may be necessary if you don't have permissions to register providers
  skip_provider_registration = true
}
