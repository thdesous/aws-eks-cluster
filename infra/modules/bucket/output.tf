output "bucket-tfstate-name" {
  value = aws_s3_bucket.bucket-tfstate.bucket
}

output "bucket-tfstate-object-key" {
  value = aws_s3_object.bucket-tfstate-object.key
}