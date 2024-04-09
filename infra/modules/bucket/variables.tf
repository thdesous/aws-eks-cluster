variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "bucket_tfstate_name" {
  type        = string
  description = "The name for the bucket for terraform state file"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}