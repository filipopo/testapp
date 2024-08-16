output "container_group_name" {
  description = "The name of the created container"
  value = azurerm_container_group.aci.name
}

output "container_ip_address" {
  description = "The IP address of the created container"
  value = azurerm_container_group.aci.ip_address
}

output "containergroup_fqdn" {
  description = "The FQDN of the created container group"
  value       = azurerm_container_group.aci.fqdn
}