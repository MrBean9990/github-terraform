#  Modestas Volkovas, IIKG3005 - ASSIGNMENT 2
#  FOR MORE INFORMATION ON THE CONFIGURATION, PLEASE REFER TO THE READ.ME FILE.

locals {
  workspace_suffix = terraform.workspace == "default" ? "" : terraform.workspace
  rg_name          = terraform.workspace == "default" ? var.rg_name : "${var.rg_name}-${local.workspace_suffix}"
}


module "keyvault" {
  source        = "./keyvault"
  kv_rgname     = local.rg_name
  kv_location   = var.kv_location
  kv_base_name  = var.kv_base_name
  sa_access_key = module.StorageAccount.primary_access_key_output
  sa_name       = module.StorageAccount.storage_account_name_output
}

module "StorageAccount" {
  source            = "./storageaccount"
  sa_rgname         = local.rg_name
  sa_location       = var.sa_location
  sa_base_name      = var.sa_base_name
  sa_container_name = var.sa_container_name
}

module "Network" {
  source           = "./network"
  vnet_rg_name     = local.rg_name
  vnet_rg_location = var.vnet_rg_location
  vnet_name        = var.vnet_name
  nsg_name         = var.nsg_name
  subnet_name      = var.subnet_name
}

module "VirtualMachine" {
  source         = "./virtualmachine"
  vm_name        = var.vm_name
  vm_rg_name     = local.rg_name
  vm_rg_location = var.vm_rg_location
  vm_nic_name    = var.vm_nic_name
  vm_subnet_id   = module.Network.subnet_id_output
  pip_name       = var.pip_name
  vm_username    = var.vm_username
  vm_password    = var.vm_password
}
