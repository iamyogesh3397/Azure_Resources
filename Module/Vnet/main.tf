resource "azurerm_virtual_network" "child_vnet_b" {
    for_each = var.child_vnet
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space = each.value.address_space
}