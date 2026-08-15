data "azurerm_public_ip" "publi_sushil"{
    for_each = var.rg_vm
   name=each.value.pip_name
    resource_group_name = each.value.rg_name

}

data "azurerm_subnet" "subnet" {
  for_each = var.rg_vm
  name = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name = each.value.rg_name
}