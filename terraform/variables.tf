variable "subscription_id" {
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

variable "container_registry" {
  default     = "filiptestapp"
  description = "Container registry"
  type        = string
}

variable "container_name" {
  default     = "mycontainer"
  description = "Name of the container"
  type        = string
}

variable "image_name" {
  default     = "mycontainer"
  description = "Name of the image"
  type        = string
}

variable "cpu_core_number" {
  default     = 1
  description = "Number of CPU cores"
  type        = number
}

variable "memory_size" {
  default     = 1.5
  description = "Memory size in GB"
  type        = number
}

variable "container_group_name" {
  default     = "mycontainergroup"
  description = "The name of the container group"
  type        = string
}

variable "resource_group_name" {
  default     = "testapp"
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  default     = "westeurope"
  description = "Azure location"
  type        = string
}

variable "os_type" {
  default     = "Linux"
  description = "The OS for the container group. Allowed values are Linux and Windows"
  type        = string
}

variable "port_number" {
  default     = 80
  description = "A public port for the container"
  type        = number
}
