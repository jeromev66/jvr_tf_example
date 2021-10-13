variable "azure_region" {
  description = "Azure region"
  type        = string
  default = "North Europe"
}

variable "tags" {
  description = "tags"
  type = map
  default = {
    usage = "jvr_proj"
  }
}

variable "TENANT_ID" {
  description = "Azure Tenant Id"
  type        = string
}

variable "JVR_OBJECT_ID" {
  description = "jvr object id"
  type        = string
}

variable "VM_ADMIN_USERNAME" {
  description = "Virtual Machine Admin Username"
  type = string
}

variable "VM_ADMIN_PASSWORD" {
  description = "Virtual Machine Admin Password"
  type = string
}

variable "SQL_ADMIN_USERNAME" {
  description = "SQL Admin Username"
  type = string
}

variable "SQL_ADMIN_PASSWORD" {
  description = "SQL Admin Password"
  type = string
}

variable "SPN_DEVOPS_OBJECT_ID" {
  description = "SPN Azure Devops Object Id"
  type = string
}

variable "AUTHORIZED_IP" {
  type = string
}
