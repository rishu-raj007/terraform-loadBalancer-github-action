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
    nsg_name = "nsg-dev-01"
    location = "East US"
    resource_group_name = "rg-dev-01"
    tags = {
      environment = "dev"
      owner       = "g4"
      use_case    = "loadbalancer"
    }
}

module "nic" {
    depends_on = [ module.rg, module.nsg ]
    source = "../../modules/azurerm_nic"
    nics = var.root_nic
   
}
# module for linux virtual machine
module "linux_vm" {
    depends_on = [ module.rg, module.nic ]
    source = "../../modules/azurerm_linux_vm"
    linux_vm = var.root_linux_vm
}
module "nsg_nic_assoc" {
  depends_on = [ module.rg, module.nic, module.nsg, module.linux_vm ]
    source = "../../modules/azurerm_nsg_nic_assoc"
    linux_vm = var.root_linux_vm
    nsg = var.root_nsg
  
}
