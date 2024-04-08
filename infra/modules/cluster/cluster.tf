resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.iam-role.arn

  vpc_config {
    subnet_ids = [
      var.subnet_pub_1a,
      var.subnet_pub_1b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.cluster-iam-role-policy-attachment
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-${var.cluster_name}"
    }
  )
}