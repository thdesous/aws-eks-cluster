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

# Bucket module outputs

output "bucket-tfstate-name" {
  value       = module.module-bucket.bucket-tfstate-name
  description = "Name of the bucket - Can be used to configure the S3 backend for terraform to store the state data files. For more information - https://developer.hashicorp.com/terraform/language/settings/backends/s3"
}

output "bucket-tfstate-object-key" {
  value       = module.module-bucket.bucket-tfstate-object-key
  description = "Full path to the object inside the bucket"
}

output "bucket-tfstate-region" {
  value       = module.module-bucket.bucket-tfstate-region
  description = "Region this bucket resides in"
}