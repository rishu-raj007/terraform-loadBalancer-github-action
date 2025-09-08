module "rg" {
    source = "../../modules/azurerm_resource_group"
    resource_groups = var.root_resource_groups
  
}
module "vnetSubnet" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_vnet"
    vnets = var.root_venet
  
}
module "nsg" {
  depends_on = [ module.rg ]
    source = "../../modules/azurerm_nsg"
}

module "nic" {
    depends_on = [ module.rg, module.nsg ]
    source = "../../modules/azurerm_nic"
    nics = var.root_nic
   
}
module "linux_vm" {
    depends_on = [ module.rg, module.nic ]
    source = "../../modules/azurerm_linux_vm"
    linux_vm = var.root_linux_vm
}