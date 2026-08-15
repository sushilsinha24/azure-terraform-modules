module "resource_group" {
  source = "../Child_module/azurerm_resource_group"
  sms    = var.sms
}
module "stg" {
  depends_on = [module.resource_group]
  source     = "../Child_module/azurerm_storage_account"
  rg_stg     = var.rg_stg
}
module "container" {
  depends_on   = [module.stg]
  source       = "../child_module/azurerm_container"
  rg_container = var.rg_container

}
module "vnet" {
  depends_on = [module.resource_group]
  source     = "../Child_module/azurerm_virtual_network"
  rg_vnet    = var.rg_vnet
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../child_module/azurerm_subnet"
  rg_subnet  = var.rg_subnet

}
module "pip" {
  depends_on = [module.resource_group]
  source     = "../Child_module/azurerm_public_ip"
  rg_pip     = var.rg_pip
}
module "vm" {
  depends_on = [module.subnet, module.pip]
  source     = "../Child_module/azurerm_virtual_masheen"
  rg_vm      = var.rg_vm

}