variable "name" {
  type = string
}

variable "priority" {
  type = number
}

variable "direction" {
  type = string
}

variable "destination_port_range" {
  type = string
}

variable "source_address_prefix" {
  type = string
}

variable "destination_address_prefix" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "network_security_group_name" {
  type = string
}