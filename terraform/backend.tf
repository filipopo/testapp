terraform {
  backend "azurerm" {
    resource_group_name  = "safe-resource-group"
    storage_account_name = "filiptestappstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
