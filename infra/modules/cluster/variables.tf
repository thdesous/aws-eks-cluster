variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}

variable "managed_amazon_eks_cluster_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Cluster Policy"
}

variable "subnet_pub_1a" {
  type        = string
  description = "Public subnet-1a output value from network module for creating EKS Cluster"
}

variable "subnet_pub_1b" {
  type        = string
  description = "Public subnet-1b output value from network module for creating EKS Cluster"
}