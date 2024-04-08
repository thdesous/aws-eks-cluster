output "management-node-group-status" {
  value = aws_eks_node_group.mng-node-group.status
}