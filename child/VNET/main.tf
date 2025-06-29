resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet1
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg-name
}


