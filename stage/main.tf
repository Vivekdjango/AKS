terraform {
  backend "azurerm" {
    resource_group_name  = "demo"
    storage_account_name = "terraform1demo"
    container_name       = "terraform"
    key                  = "dev.terraform.tfstate"
  }
}

module "RG" {
  source   = "./module/RG"
  rgname   = var.rgname
  location = var.location
}
