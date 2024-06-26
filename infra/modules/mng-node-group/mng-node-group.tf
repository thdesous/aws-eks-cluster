resource "aws_eks_node_group" "mng-node-group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-mng-node-group"
  node_role_arn   = aws_iam_role.mng-node-group-iam-role.arn
  capacity_type   = var.capacity_type
  instance_types  = var.instance_types
  subnet_ids = [
    var.subnet_pri_1a,
    var.subnet_pri_1b
  ]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-eks-worker-node,
    aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-ec2-container-registry-readonly,
    aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-eks-cni,
  ]

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-mng-node-group"
      Project = "${var.project_name}"
    }
  )
}