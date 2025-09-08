resource "azurerm_linux_virtual_machine" "example" {
    for_each = var.linux_vm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size 
  admin_username      = each.value.username 
admin_password      = each.value.password
  
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.nic[each.key].id,
  ]
  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}