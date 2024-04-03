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