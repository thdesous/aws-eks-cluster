resource "aws_s3_bucket" "bucket-tfstate" {
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
  bucket = aws_s3_bucket.bucket-tfstate.id
  key    = "terraform-states/projects/${var.project_name}/${var.tags["Environment"]}/"


  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-bucket-tfstate-object"
      Project = "${var.project_name}"
    }
  )
}