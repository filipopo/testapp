resource "azurerm_resource_group" "aci" {
  name     = local.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "aci" {
  name                = var.container_registry
  resource_group_name = azurerm_resource_group.aci.name
  location            = azurerm_resource_group.aci.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_container_group" "aci" {
  name                = local.container_group_name
  location            = azurerm_resource_group.aci.location
  resource_group_name = azurerm_resource_group.aci.name
  os_type             = var.os_type

  image_registry_credential {
    server   = local.image_registry
    username = var.client_id
    password = var.client_secret
  }

  container {
    name   = local.container_name
    image  = "${local.image_registry}/${local.image_name}:${var.image_tag}"
    cpu    = var.cpu_core_number
    memory = var.memory_size

    ports {
      port     = var.port_number
      protocol = "TCP"
    }
  }
}
