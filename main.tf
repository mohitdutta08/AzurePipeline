resource "azurerm_resource_group" "rg" {
  for_each = var.rg
  name = each.value.rgname
  location = each.value.rglocation
}

resource "azurerm_virtual_network" "name" {
  for_each = var.vnet
  name = each.value.vnetname
  location = each.value.rglocation
  resource_group_name = each.value.rgname
  address_space = each.value.address_space
}