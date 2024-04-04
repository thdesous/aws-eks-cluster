resource "aws_iam_policy" "lb-controller-iam-policy" {
  name = "${var.project_name}-lb-controller-iam-policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/iam-policy.json")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-lb-controller-iam-policy"
    }
  )
}