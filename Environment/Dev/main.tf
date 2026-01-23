module "resource_group" {
  source = "../../Modules/azurerm_resource_group"

  rg_name = var.resource_group



}

module "kubernetes_cluster" {
    source = "../../Modules/azurerm_kubernetes_cluster"
depends_on = [ module.resource_group ]
    
  cluster_name        = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix

  node_count = var.node_count
  vm_size    = var.vm_size

  tags = var.tags
  
}
