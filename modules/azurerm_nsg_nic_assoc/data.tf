data "azurerm_network_interface" "nic" {
  for_each = var.linux_vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
  
}
data "azurerm_network_security_group" "nsg" {
  for_each = var.nsg
  name                = each.value.nsg_name
  resource_group_name = each.value.resource_group_name
}