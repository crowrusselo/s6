variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location for the resources"
  type        = string
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 3
}

variable "kubernetes_version" {
  description = "The version of Kubernetes for the AKS cluster"
  type        = string
  default     = "1.23.3"
}

variable "vm_size" {
  description = "The size of the VM instances in the AKS node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Owner       = "YourName"
  }
}

variable "vnet_cidr" {
  description = "CIDR block for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "service_cidr" {
  description = "CIDR block for the Kubernetes service"
  type        = string
  default     = "10.0.2.0/24"
}

variable "dns_service_ip" {
  description = "DNS service IP for the Kubernetes cluster"
  type        = string
  default     = "10.0.2.10"
}

variable "docker_bridge_cidr" {
  description = "CIDR block for Docker bridge network"
  type        = string
  default     = "172.17.0.1/16"
}
