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
| <a name="module_module-bucket"></a> [module-bucket](#module\_module-bucket) | ./modules/bucket | n/a |
| <a name="module_module-cluster"></a> [module-cluster](#module\_module-cluster) | ./modules/cluster | n/a |
| <a name="module_module-load-balancer-controller"></a> [module-load-balancer-controller](#module\_module-load-balancer-controller) | ./modules/load-balancer-controller | n/a |
| <a name="module_module-mng-node-group"></a> [module-mng-node-group](#module\_module-mng-node-group) | ./modules/mng-node-group | n/a |
| <a name="module_module-network"></a> [module-network](#module\_module-network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Type of capacity associated with the EKS Node Group. Valid values: ON\_DEMAND, SPOT | `string` | `"SPOT"` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster name | `string` | `"my-cluster"` | no |
| <a name="input_create_new_bucket_tfstate"></a> [create\_new\_bucket\_tfstate](#input\_create\_new\_bucket\_tfstate) | Selection to create a new bucket, if you choose to use the bucket to store the terraform state | `bool` | `false` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types associated with the EKS Node Group | `list(string)` | <pre>[<br>  "t2.micro"<br>]</pre> | no |
| <a name="input_managed_amazon_ec2_container_registry_readonly_policy_arn"></a> [managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn](#input\_managed\_amazon\_ec2\_container\_registry\_readonly\_policy\_arn) | ARN for Type AWS managed policy EC2 Container Regitry ReadOnly Policy | `string` | `"arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"` | no |
| <a name="input_managed_amazon_eks_cluster_policy_arn"></a> [managed\_amazon\_eks\_cluster\_policy\_arn](#input\_managed\_amazon\_eks\_cluster\_policy\_arn) | ARN for Type AWS managed policy EKS Cluster Policy | `string` | `"arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"` | no |
| <a name="input_managed_amazon_eks_cni_policy_arn"></a> [managed\_amazon\_eks\_cni\_policy\_arn](#input\_managed\_amazon\_eks\_cni\_policy\_arn) | ARN for Type AWS managed policy EKS CNI (Container Networking Interface) Policy | `string` | `"arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"` | no |
| <a name="input_managed_amazon_eks_worker_node_policy_arn"></a> [managed\_amazon\_eks\_worker\_node\_policy\_arn](#input\_managed\_amazon\_eks\_worker\_node\_policy\_arn) | ARN for Type AWS managed policy EKS Worker Node Policy | `string` | `"arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | `"lab-eks"` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | Name of selected region for create the resources | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket-tfstate-name"></a> [bucket-tfstate-name](#output\_bucket-tfstate-name) | Name of the bucket - Can be used to configure the S3 backend for terraform to store the state data files. For more information - https://developer.hashicorp.com/terraform/language/settings/backends/s3 |
| <a name="output_bucket-tfstate-object-key"></a> [bucket-tfstate-object-key](#output\_bucket-tfstate-object-key) | Full path to the object inside the bucket |
| <a name="output_bucket-tfstate-region"></a> [bucket-tfstate-region](#output\_bucket-tfstate-region) | Region this bucket resides in |
| <a name="output_cluster-name"></a> [cluster-name](#output\_cluster-name) | EKS Cluster name |
| <a name="output_cluster-status"></a> [cluster-status](#output\_cluster-status) | Status of the EKS cluster |
| <a name="output_management-node-group-status"></a> [management-node-group-status](#output\_management-node-group-status) | Status of the EKS Node Group |
<!-- END_TF_DOCS -->