locals {
  oidc_id = split("/", var.oidc_url_identity)[4]
}