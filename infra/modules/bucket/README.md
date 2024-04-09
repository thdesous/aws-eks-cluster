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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_tfstate_name"></a> [bucket\_tfstate\_name](#input\_bucket\_tfstate\_name) | The name for the bucket for terraform state file | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name for tags | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket-tfstate-name"></a> [bucket-tfstate-name](#output\_bucket-tfstate-name) | n/a |
| <a name="output_bucket-tfstate-region"></a> [bucket-tfstate-region](#output\_bucket-tfstate-region) | n/a |
<!-- END_TF_DOCS -->