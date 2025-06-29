resource "azurerm_resource_group" "atit-rg" {
  name     = var.rg-name
  location = var.location
}