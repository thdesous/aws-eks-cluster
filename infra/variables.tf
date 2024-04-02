# General variables from project

variable "project_name" {
  type        = string
  description = "Project name for tags"
}

# Network module variables
variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

# Cluster module variables

variable "managed_amazon_eks_cluster_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Cluster Policy"
}