resource "aws_iam_role" "mng-node-group-iam-role" {
  name = "${var.project_name}-mng-node-group-iam-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng-node-group-iam-role"
    }
  )
}

# Attaches a Managed IAM Policy to an IAM role

## This policy allows Amazon EKS worker nodes to connect to Amazon EKS Clusters.
resource "aws_iam_role_policy_attachment" "mng-node-group-iam-role-policy-attachment-eks-worker-node" {
  role       = aws_iam_role.mng-node-group-iam-role.name
  policy_arn = var.managed_amazon_eks_worker_node_policy_arn

}

## Provides read-only access to Amazon EC2 Container Registry repositories.
resource "aws_iam_role_policy_attachment" "mng-node-group-iam-role-policy-attachment-ec2-container-registry-readonly" {
  role       = aws_iam_role.mng-node-group-iam-role.name
  policy_arn = var.managed_amazon_ec2_container_registry_readonly_policy_arn

}

## This policy provides the Amazon VPC CNI (Container Networking Interface) Plugin (amazon-vpc-cni-k8s) the permissions it requires to modify the IP address configuration on your EKS worker nodes. 
## This permission set allows the CNI to list, describe, and modify Elastic Network Interfaces on your behalf. 
resource "aws_iam_role_policy_attachment" "mng-node-group-iam-role-policy-attachment-eks-cni" {
  role       = aws_iam_role.mng-node-group-iam-role.name
  policy_arn = var.managed_amazon_eks_cni_policy_arn

}