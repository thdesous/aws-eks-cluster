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
| [aws_s3_bucket.bucket-tfstate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_object.bucket-tfstate-object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_existing_bucket_name"></a> [existing\_bucket\_name](#input\_existing\_bucket\_name) | Name of the existing bucket to be used for storing the terraform state file | `string` | `"null"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to resources | `map(any)` | n/a | yes |
| <a name="input_use_existing_bucket_tfstate"></a> [use\_existing\_bucket\_tfstate](#input\_use\_existing\_bucket\_tfstate) | Flag to indicate whether to use an existing bucket for storing the terraform state file | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket-tfstate-name"></a> [bucket-tfstate-name](#output\_bucket-tfstate-name) | n/a |
| <a name="output_bucket-tfstate-object-key"></a> [bucket-tfstate-object-key](#output\_bucket-tfstate-object-key) | n/a |
<!-- END_TF_DOCS -->