variable "virtual_machine_id" {
  type = string
}

variable "sql_password" {
  type = string
}

variable "sql_username" {
  type = string
}

variable "data_disk_lun" {
  type = list
}

variable "log_disk_lun" {
  type = list
}

variable "tempdb_disk_lun" {
  type = list
}

variable "data_path" {
  type = string
}

variable "log_path" {
  type = string
}

variable "tempdb_path" {
  type = string
}

variable "workload_type" {
  type = string
}
