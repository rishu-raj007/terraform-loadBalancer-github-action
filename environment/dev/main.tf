module "rg" {
    source = "../../modules/azurerm_resource_group"
    resource_groups = var.root_resource_groups
  
}