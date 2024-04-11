output "bucket-tfstate-name" {
  value = var.create_new_bucket_tfstate ? aws_s3_bucket.bucket-tfstate[0].bucket : null
}

output "bucket-tfstate-region" {
  value = var.create_new_bucket_tfstate ? aws_s3_bucket.bucket-tfstate[0].region : null
}

output "bucket-tfstate-object-key" {
  value = var.create_new_bucket_tfstate ? aws_s3_object.bucket-tfstate-object[0].key : null
}