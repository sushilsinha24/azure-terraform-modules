resource "azurerm_storage_container" "rg_stcon" {
    for_each = var.rg_container
  name                  = each.value.stgcont_name
  storage_account_id    = data.azurerm_storage_account.sushil[each.key].id
  container_access_type = "private"
}