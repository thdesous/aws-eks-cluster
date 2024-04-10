resource "aws_s3_bucket" "bucket-tfstate" {
  count  = var.use_existing_bucket_tfstate ? 0 : 1
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
  count  = var.use_existing_bucket_tfstate ? 0 : 1
  bucket = aws_s3_bucket.bucket-tfstate[0].id
  key    = "terraform-states/projects/${var.project_name}/${var.tags["Environment"]}/"

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-bucket-tfstate-object"
      Project = "${var.project_name}"
    }
  )
}