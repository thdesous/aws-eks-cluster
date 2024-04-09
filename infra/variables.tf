# General variables from project

variable "project_name" {
  type        = string
  description = "Project name for tags"
  default     = "lab-eks"
}

variable "region_name" {
  type        = string
  description = "Name of selected region for create the resources"
  default     = "us-east-1"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all resources"
}

## Network module variables

variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
  default     = "10.0.0.0/16"
}

## Cluster module variables

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
  default     = "my-cluster"
}

variable "managed_amazon_eks_cluster_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Cluster Policy"
  default     = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

## Management Node Group module variables

variable "capacity_type" {
  type        = string
  description = "Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT"
  default     = "SPOT"
}

variable "instance_types" {
  type        = list(string)
  description = "List of instance types associated with the EKS Node Group"
  default     = ["t2.micro"]
}

variable "managed_amazon_eks_worker_node_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS Worker Node Policy"
  default     = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

variable "managed_amazon_ec2_container_registry_readonly_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EC2 Container Regitry ReadOnly Policy"
  default     = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

variable "managed_amazon_eks_cni_policy_arn" {
  type        = string
  description = "ARN for Type AWS managed policy EKS CNI (Container Networking Interface) Policy"
  default     = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

## Bucket module variables

variable "bucket_tfstate_name" {
  type        = string
  description = "The name for the bucket for terraform state file"
}