output "bucket-tfstate-name" {
  value = aws_s3_bucket.bucket-tfstate.id
}

output "bucket-tfstate-region" {
  value = aws_s3_bucket.bucket-tfstate.region
}