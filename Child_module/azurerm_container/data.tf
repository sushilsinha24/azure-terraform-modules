data "azurerm_storage_account" "sushil" {
    for_each = var.rg_container
    name = each.value.st_name
    resource_group_name = each.value.rg_name
  
}