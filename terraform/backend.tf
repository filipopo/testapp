terraform {
  backend "azurerm" {
    resource_group_name  = "testapp"
    storage_account_name = "filiptestappstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
