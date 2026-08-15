resource "azurerm_virtual_network" "rg_vnet" {
    for_each = var.rg_vnet
    name=each.value.vnet_name
    resource_group_name=each.value.rg_name
    address_space = each.value.address_space
  location = each.value.location
}