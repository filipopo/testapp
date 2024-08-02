resource "azurerm_resource_group" "aci" {
  name     = "aci-rg"
  location = "eastus"
}

resource "azurerm_container_registry" "aci" {
  name                     = "myacr"
  resource_group_name      = azurerm_resource_group.aci.name
  location                 = azurerm_resource_group.aci.location
  sku                      = "Basic"
  admin_enabled            = true
  georeplication_locations = ["eastus2"]
}

resource "azurerm_container_group" "aci" {
  name                = "mycontainergroup"
  location            = azurerm_resource_group.aci.location
  resource_group_name = azurerm_resource_group.aci.name
  os_type             = "Linux"

  container {
    name   = var.container_name
    image  = var.image_name
    cpu    = var.cpu_core_number
    memory = var.memory_size

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}
