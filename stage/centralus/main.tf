terraform {
  backend "azurerm" {
    resource_group_name  = "terrafromDemo"
    storage_account_name = "terraformstatestorage123"
    container_name       = "statefile"
    key                  = "dev.terraform.tfstate"

  }
}


module "RG" {
  source   = "./module/RG"
  rgname   = var.rgname
  location = var.location
}
