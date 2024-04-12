# Cluster module outputs

output "cluster-name" {
  value       = module.module-cluster.cluster-name
  description = "EKS Cluster name"
}

output "cluster-status" {
  value       = module.module-cluster.cluster-status
  description = "Status of the EKS cluster"
}

output "management-node-group-status" {
  value       = module.module-mng-node-group.management-node-group-status
  description = "Status of the EKS Node Group"
}