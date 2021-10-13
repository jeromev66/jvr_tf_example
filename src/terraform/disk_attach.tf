module "attach_data" {
    source  = "../../modules/disk_attach"
    disk_id = module.dataDisk.id
    vm_id   = module.virtual_machine.id
    lun     = "2"
    caching = "ReadOnly"
}

module "attach_log" {
    source  = "../../modules/disk_attach"
    disk_id = module.logDisk.id
    vm_id   = module.virtual_machine.id
    lun     = "3"
    caching = "None"
}

module "attach_tempdb" {
    source  = "../../modules/disk_attach"
    disk_id = module.tempDbDisk.id
    vm_id   = module.virtual_machine.id
    lun     = "4"
    caching = "ReadWrite"
}