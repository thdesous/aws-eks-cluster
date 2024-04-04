variable "project_name" {
  type        = string
  description = "Project name for tags"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add to resources"
}

variable "oidc_url_identity" {
  type        = string
  description = "Https Url from Oidc provider of identity EKS cluster"
}
