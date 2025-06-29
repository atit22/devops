resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = var.rg-name
  virtual_network_name = var.vnet1
  address_prefixes     =var.adress_pref
}

