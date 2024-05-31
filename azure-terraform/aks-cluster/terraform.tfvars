resource_group_name = "dev-resources-2"
location            = "East US 2"
aks_cluster_name    = "dev-aks"
node_count          = 3
kubernetes_version  = "1.23.3"
vm_size             = "Standard_DS2_v2"
tags = {
  Environment = "Development"
  Owner       = "YourName"
}
vnet_cidr          = "10.0.0.0/16"
subnet_cidr        = "10.0.1.0/24"
service_cidr       = "10.0.2.0/24"
dns_service_ip     = "10.0.2.10"
docker_bridge_cidr = "172.17.0.1/16"
