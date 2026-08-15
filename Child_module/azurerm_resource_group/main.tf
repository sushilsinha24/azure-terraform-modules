resource "azurerm_resource_group" "rg" {
    for_each = var.sms
    name=each.value.rg_name
    location = each.value.location
  
}