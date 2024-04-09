resource "aws_s3_bucket" "bucket-tfstate" {
  bucket = var.bucket_tfstate_name

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-bucket-tfstate"
      Project = "${var.project_name}"
    }
  )
}