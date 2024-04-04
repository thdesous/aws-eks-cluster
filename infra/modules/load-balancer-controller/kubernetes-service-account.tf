resource "kubernetes_service_account" "kubernetes-service-account" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.lb-controller-iam-role.arn
    }
  }
}