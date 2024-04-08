<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.44.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.mng-node-group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.mng-node-group-iam-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-ec2-container-registry-readonly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-eks-cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.mng-node-group-iam-role-policy-attachment-eks-worker-node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster name | `string` | n/a | yes |
| <a name="input_managed_amazon_ec2_container_registry_readonly_policy_arn"></a> [managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn](#input\_managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn) | ARN for Type AWS managed policy EC2 Container Regitry ReadOnly Policy | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_cni_policy_arn"></a> [managed\_amazon\_eks\_cni\_policy\_arn](#input\_managed\_amazon\_eks\_cni\_policy\_arn) | ARN for Type AWS managed policy EKS CNI (Container Networking Interface) Policy | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_worker_node_policy_arn"></a> [managed\_amazon\_eks\_worker\_node\_policy\_arn](#input\_managed\_amazon\_eks\_worker\_node\_policy\_arn) | ARN for Type AWS managed policy EKS Worker Node Policy | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | n/a | yes |
| <a name="input_subnet_pri_1a"></a> [subnet\_pri\_1a](#input\_subnet\_pri\_1a) | Private subnet-1a output value from network module for EKS Mangement Node Group | `string` | n/a | yes |
| <a name="input_subnet_pri_1b"></a> [subnet\_pri\_1b](#input\_subnet\_pri\_1b) | Private subnet-1b output value from network module for EKS Mangement Node Group | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to resources | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->