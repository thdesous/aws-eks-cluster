output "cluster-vpc-config" {
  value = aws_eks_cluster.cluster.vpc_config
}

output "cluster-security-group-id" {
  value = aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
}

output "oidc-issuer" {
  value = data.tls_certificate.tls-certificate-oidc
}

output "cluster-name" {
  value = aws_eks_cluster.cluster.id
}

output "oidc-url-identity" {
  value = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

output "cluster-ca-cert" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "cluster-endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}