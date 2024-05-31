output "aks_cluster_name" {
  description = "dev-aks"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kubeconfig" {
  description = "Kubeconfig file content"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

