resource "aws_s3_bucket" "bucket-tfstate" {
  count  = var.create_new_bucket_tfstate ? 1 : 0
  bucket = "${var.project_name}-bucket-tfstate-${uuid()}"

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-bucket-tfstate"
      Project = "${var.project_name}"
    }
  )
}

resource "aws_s3_object" "bucket-tfstate-object" {
  count  = var.create_new_bucket_tfstate ? 1 : 0
  bucket = aws_s3_bucket.bucket-tfstate[0].id
  key    = "tfstates/${var.project_name}/${var.tags["Environment"]}/tfstate"

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-bucket-tfstate-object"
      Project = "${var.project_name}"
    }
  )
}