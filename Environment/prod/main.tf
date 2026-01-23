module "resource_group" {
    source = "../../Modules/azurerm_resource_group"

    rg_name = var.resource_group
  
}