resource "azurerm_network_interface" "nic" {
  name                = var.nic1
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm1
  resource_group_name = var.rg-name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = var.vm_admin
  admin_password      = var.vm_password
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]
  
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    }
}