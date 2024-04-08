# General variables from project

variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "region_name" {
  type        = string
  description = "Name of selected region for create the resources"
}

## Network module variables
variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

## Cluster module variables

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}

variable "managed_amazon_eks_cluster_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Cluster Policy"
}

## Management Node Group module variables

variable "capacity_type" {
  type        = string
  description = "Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT"
}

variable "instance_types" {
  type        = list(string)
  description = "List of instance types associated with the EKS Node Group. Defaults to ['t3.medium']"
}

variable "managed_amazon_eks_worker_node_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Worker Node Policy"
}

variable "managed_amazon_ec2_container_registry_readonly_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EC2 Container Regitry ReadOnly Policy"
}

variable "managed_amazon_eks_cni_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS CNI (Container Networking Interface) Policy"
}