resource "aws_iam_role" "lb-controller-iam-role" {
  name = "${var.project_name}-lb-controller-iam-role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::${data.aws_caller_identity.caller-identity-current.account_id}:oidc-provider/oidc.eks.${data.aws_region.region-current.name}.amazonaws.com/id/${local.oidc_id}"
            },
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Condition": {
                "StringEquals": {
                    "oidc.eks.${data.aws_region.region-current.name}.amazonaws.com/id/${local.oidc_id}:aud": "sts.amazonaws.com",
                    "oidc.eks.${data.aws_region.region-current.name}.amazonaws.com/id/${local.oidc_id}:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller"
                }
            }
        }
    ]
}
EOF

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-lb-controller-iam-role"
    }
  )
}

# Attaches a Managed IAM Policy to an IAM role

resource "aws_iam_role_policy_attachment" "lb-controller-iam-role-policy-attachment" {
  role       = aws_iam_role.lb-controller-iam-role.name
  policy_arn = aws_iam_policy.lb-controller-iam-policy.arn

}