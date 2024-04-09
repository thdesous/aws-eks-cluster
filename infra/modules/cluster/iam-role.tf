resource "aws_iam_role" "iam-role" {
  name = "${var.project_name}-iam-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-iam-role"
      Project = "${var.project_name}"
    }
  )
}

# Attaches a Managed IAM Policy to an IAM role

resource "aws_iam_role_policy_attachment" "cluster-iam-role-policy-attachment" {
  role       = aws_iam_role.iam-role.name
  policy_arn = var.managed_amazon_eks_cluster_policy_arn

}