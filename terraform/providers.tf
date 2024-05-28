terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.104.1"
    }
  }
}

# Configure the Microsoft Azure provider
provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = "1819207e-6e52-492b-b4b3-5e0d064af10b"
}
