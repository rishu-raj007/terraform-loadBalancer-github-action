
resource "azurerm_network_interface" "nic" {
    for_each = var.nics
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    tags                = each.value.tags
    
    ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}