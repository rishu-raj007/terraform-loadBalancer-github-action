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
  