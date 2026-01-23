resource "azurerm_kubernetes_cluster" "aks" {

    name = var.cluster_name
    resource_group_name = var.resource_group_name
    location = var.location
    dns_prefix = var.dns_prefix
    default_node_pool {
        name =  "defult"
      node_count = var.node_count
      vm_size =  var.vm_size
    }
identity {
  type =  "SystemAssigned"
}
  tags = var.tags
}