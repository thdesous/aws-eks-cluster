variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}