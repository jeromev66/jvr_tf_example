module "mssql_virtual_machine" {
    source             = "../../modules/mssql_vm"
    virtual_machine_id = module.virtual_machine.id
    sql_password       = var.SQL_ADMIN_PASSWORD
    sql_username       = var.SQL_ADMIN_USERNAME
    workload_type      = "GENERAL"
    data_path          = "S:\\DATA"
    data_disk_lun      = [module.attach_data.lun]
    log_path           = "T:\\LOGS"
    log_disk_lun       = [module.attach_log.lun]
    tempdb_path        = "U:\\TEMPDB"
    tempdb_disk_lun    = [module.attach_tempdb.lun]
}