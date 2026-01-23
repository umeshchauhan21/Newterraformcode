resource_group = {

  rg1 = {
    name     = "dev-rg"
    location = "centralindia"
    tags = {
      env = "dev"
    }
  }
}


cluster_name        = "dev-aks"
resource_group_name = "dev-rg"
location            = "centralindia"
dns_prefix          = "devaks"

node_count = 1
vm_size    = "standard_b2s_v2"  

tags = {
  env  = "dev"
  
}