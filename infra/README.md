<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.41.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.17.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_module-cluster"></a> [module-cluster](#module\_module-cluster) | ./modules/cluster | n/a |
| <a name="module_module-load-balancer-controller"></a> [module-load-balancer-controller](#module\_module-load-balancer-controller) | ./modules/load-balancer-controller | n/a |
| <a name="module_module-mng-node-group"></a> [module-mng-node-group](#module\_module-mng-node-group) | ./modules/mng-node-group | n/a |
| <a name="module_module-network"></a> [module-network](#module\_module-network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Type of capacity associated with the EKS Node Group. Valid values: ON\_DEMAND, SPOT | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster name | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types associated with the EKS Node Group. Defaults to ['t3.medium'] | `list(string)` | n/a | yes |
| <a name="input_managed_amazon_ec2_container_registry_readonly_policy_arn"></a> [managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn](#input\_managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn) | ARN for Type AWS managed policy EC2 Container Regitry ReadOnly Policy | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_cluster_policy_arn"></a> [managed\_amazon\_eks\_cluster\_policy\_arn](#input\_managed\_amazon\_eks\_cluster\_policy\_arn) | ARN for Type AWS managed policy EKS Cluster Policy | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_cni_policy_arn"></a> [managed\_amazon\_eks\_cni\_policy\_arn](#input\_managed\_amazon\_eks\_cni\_policy\_arn) | ARN for Type AWS managed policy EKS CNI (Container Networking Interface) Policy | `string` | n/a | yes |
| <a name="input_managed_amazon_eks_worker_node_policy_arn"></a> [managed\_amazon\_eks\_worker\_node\_policy\_arn](#input\_managed\_amazon\_eks\_worker\_node\_policy\_arn) | ARN for Type AWS managed policy EKS Worker Node Policy | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | n/a | yes |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | Name of selected region for create the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster-name"></a> [cluster-name](#output\_cluster-name) | Test for debug output |
| <a name="output_cluster-status"></a> [cluster-status](#output\_cluster-status) | Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED |
| <a name="output_management-node-group-status"></a> [management-node-group-status](#output\_management-node-group-status) | Status of the EKS Node Group |
<!-- END_TF_DOCS -->