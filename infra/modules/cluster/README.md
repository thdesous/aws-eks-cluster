<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.44.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_openid_connect_provider.iam-openid-connect-provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.iam-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.cluster-iam-role-policy-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group_rule.sg-rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [tls_certificate.tls-certificate-oidc](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster name | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_cluster_policy_arn"></a> [managed\_amazon\_eks\_cluster\_policy\_arn](#input\_managed\_amazon\_eks\_cluster\_policy\_arn) | ARN for Type AWS managed policy EKS Cluster Policy | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | n/a | yes |
| <a name="input_subnet_pub_1a"></a> [subnet\_pub\_1a](#input\_subnet\_pub\_1a) | Public subnet-1a output value from network module for creating EKS Cluster | `string` | n/a | yes |
| <a name="input_subnet_pub_1b"></a> [subnet\_pub\_1b](#input\_subnet\_pub\_1b) | Public subnet-1b output value from network module for creating EKS Cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster-ca-cert"></a> [cluster-ca-cert](#output\_cluster-ca-cert) | n/a |
| <a name="output_cluster-endpoint"></a> [cluster-endpoint](#output\_cluster-endpoint) | n/a |
| <a name="output_cluster-name"></a> [cluster-name](#output\_cluster-name) | n/a |
| <a name="output_cluster-security-group-id"></a> [cluster-security-group-id](#output\_cluster-security-group-id) | n/a |
| <a name="output_cluster-status"></a> [cluster-status](#output\_cluster-status) | n/a |
| <a name="output_cluster-vpc-config"></a> [cluster-vpc-config](#output\_cluster-vpc-config) | n/a |
| <a name="output_oidc-issuer"></a> [oidc-issuer](#output\_oidc-issuer) | n/a |
| <a name="output_oidc-url-identity"></a> [oidc-url-identity](#output\_oidc-url-identity) | n/a |
<!-- END_TF_DOCS -->