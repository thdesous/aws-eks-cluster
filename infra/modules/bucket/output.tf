output "bucket-tfstate-name" {
  value = var.use_existing_bucket_tfstate ? null : aws_s3_bucket.bucket-tfstate[0].bucket
}

output "bucket-tfstate-object-key" {
  value = var.use_existing_bucket_tfstate ? null : aws_s3_object.bucket-tfstate-object[0].key
}