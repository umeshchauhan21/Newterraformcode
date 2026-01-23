resource "azurerm_resource_group" "rgs" {
  for_each = var.rg_name
  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags


}
