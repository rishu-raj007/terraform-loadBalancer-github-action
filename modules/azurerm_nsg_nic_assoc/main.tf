locals {
  vm_map = {
    "vm1" = {
      nic_name = "nic-dev-01"
      nsg_name = "nsg-dev-01"
    }
    # "vm2" = {
    #   nic_name = "nic-dev-02"
    #   nsg_name = "nsg-dev-02"
    # }
  }
}
resource "azurerm_network_interface_security_group_association" "nic-nsg-assoc" {
  for_each = local.vm_map
  network_interface_id      = data.azurerm_network_interface.nic[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}