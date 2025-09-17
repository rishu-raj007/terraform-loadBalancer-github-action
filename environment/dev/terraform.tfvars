 root_resource_groups = {
  rg1 = {
    name     = "rg-dev-01"
    location = "East US"
    tags = {
      environment = "dev"
      owner       = "g4"
      use_case    = "loadbalancer"
    }
  }
 
  }
  root_venet = {
  vnet1 = {
    name                = "vnet-dev-01"
    address_space       = ["10.0.0.0/21"]
    resource_group_name = "rg-dev-01"
    subnet_name        = "snet-dev-01"
    subnet_address_prefixes = ["10.0.1.0/24"]
    location            = "East US"
    tags = {
      environment = "dev"
      owner       = "g4"
      use_case    = "loadbalancer"
    }
  }}
  root_nic = {
    nic ={
      name                = "nic-dev-01"
      resource_group_name = "rg-dev-01"
      location            = "East US"
      subnet_name         = "snet-dev-01"
      vnet_name           = "vnet-dev-01"
      tags = {
        environment = "dev"
        owner       = "g4"
        use_case    = "loadbalancer"
      }
    }
  }
  root_linux_vm = {
  vm1 = {
    name                = "vm-dev-01"
    resource_group_name = "rg-dev-01"
    location            = "East US"
    size                = "Standard_F2"
    username            = "adminuser"
    password            = "P@ssword1234!"
    caching             = "ReadWrite"
    nic_name            = "nic-dev-01"
    storage_account_type = "Standard_LRS"
  }
  vm2 = {
    name                = "vm-dev-02"
    resource_group_name = "rg-dev-01"
    location            = "East US"
    size                = "Standard_F2"
    username            = "adminuser"
    password            = "P@ssword1234!"
    caching             = "ReadWrite"
    nic_name            = "nic-dev-01"
    storage_account_type = "Standard_LRS"
  }
  
  }
  