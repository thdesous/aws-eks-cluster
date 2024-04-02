data "tls_certificate" "tls-certificate-oidc" {
  url = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "iam-openid-connect-provider" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.tls-certificate-oidc.certificates[0].sha1_fingerprint]
  url             = data.tls_certificate.tls-certificate-oidc.url

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-iam-openid-connect-provider"
    }
  )
}