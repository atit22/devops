resource "azurerm_storage_account" "atit-sg" {
  name                     = var.stg_name
  resource_group_name      = var.rg-name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
