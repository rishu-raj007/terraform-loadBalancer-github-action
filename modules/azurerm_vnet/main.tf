resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnets
    name                = each.value.name
    address_space       = each.value.address_space
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    tags                = each.value.tags

   subnet {
    name             = each.value.subnet_name
    address_prefix = each.value.subnet_address_prefixes[0]
  }
  
}
