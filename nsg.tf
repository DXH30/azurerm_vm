resource "azurerm_network_security_group" "nsg" {
  name = "${var.vm_name}-nsg"
  location = azurerm_resource_group.vm_rg.location
  resource_group_name = azurerm_resource_group.vm_rg.name

  security_rule {
    name = "AllowSSH"
    priority = 1000
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }

}
