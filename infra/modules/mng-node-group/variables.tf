variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name "
}

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

variable "subnet_pri_1a" {
  type        = string
  description = "Private subnet-1a output value from network module for EKS Mangement Node Group"
}

variable "subnet_pri_1b" {
  type        = string
  description = "Private subnet-1b output value from network module for EKS Mangement Node Group"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}