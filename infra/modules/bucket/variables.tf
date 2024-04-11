variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "create_new_bucket_tfstate" {
  type        = bool
  description = "Selection to create a new bucket, if you choose to use the bucket to store the terraform state"
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}