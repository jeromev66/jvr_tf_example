resource "azurerm_mssql_virtual_machine" "mssql_virtual_machine" {
  virtual_machine_id               = var.virtual_machine_id
  sql_license_type                 = "PAYG"
  r_services_enabled               = false
  sql_connectivity_port            = 1433
  sql_connectivity_type            = "PUBLIC"
  sql_connectivity_update_password = var.sql_password
  sql_connectivity_update_username = var.sql_username

  auto_patching {
    day_of_week                            = "Sunday"
    maintenance_window_duration_in_minutes = 60
    maintenance_window_starting_hour       = 2
  }

  storage_configuration {
    disk_type             = "NEW"
    storage_workload_type = var.workload_type
    data_settings {
      default_file_path = var.data_path
      luns = var.data_disk_lun
    }
    log_settings {
      default_file_path = var.log_path
      luns = var.log_disk_lun
    }
    temp_db_settings {
      default_file_path = var.tempdb_path
      luns = var.tempdb_disk_lun
    }
  }
}
