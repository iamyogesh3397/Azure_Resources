resource "azurerm_network_interface" "child_nic_b" {
    for_each = var.child_compute
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.exisitng_subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_network_security_group" "child_nsg_b" {
    for_each = var.child_compute
  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  security_rule {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
