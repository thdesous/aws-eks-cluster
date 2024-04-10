variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "existing_bucket_name" {
  type        = string
  description = "Name of the existing bucket to be used for storing the terraform state file"
  default     = "null"
}

variable "use_existing_bucket_tfstate" {
  type        = bool
  description = "Flag to indicate whether to use an existing bucket for storing the terraform state file"
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}