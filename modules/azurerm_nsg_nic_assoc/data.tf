data "azurerm_network_interface" "nic" {
  for_each = local.vm_map

  name                = each.value.nic_name
  resource_group_name = "rg-dev-01"
}

data "azurerm_network_security_group" "nsg" {
  for_each = local.vm_map

  name                = each.value.nsg_name
  resource_group_name = "rg-dev-01"
}
