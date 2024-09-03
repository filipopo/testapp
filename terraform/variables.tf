variable "subscription_id" {
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

variable "environment" {
  default     = "dev-testapp"
  description = "Prefix for resource names"
  type        = string
}

variable "location" {
  default     = "westeurope"
  description = "Azure location"
  type        = string
}

variable "container_registry" {
  default     = "filiptestapp"
  description = "Container registry"
  type        = string
}

variable "image_tag" {
  default     = "latest"
  description = "The tag of the docker image"
  type        = string
}

variable "os_type" {
  default     = "Linux"
  description = "The OS for the container group. Allowed values are Linux and Windows"
  type        = string
}

variable "cpu_core_number" {
  default     = 1
  description = "Number of CPU cores"
  type        = number
}

variable "memory_size" {
  default     = 0.5
  description = "Memory size in GB"
  type        = number
}

variable "port_number" {
  default     = 80
  description = "A public port for the container"
  type        = number
}

locals {
  resource_group_name  = "${var.environment}-resource-group"
  container_group_name = "${var.environment}-container-group"
  container_name       = "${var.environment}-container"
  image_name           = "${var.environment}-image"
  image_registry       = "${var.container_registry}.azurecr.io"
}
