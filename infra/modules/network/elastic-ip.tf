resource "aws_eip" "elastic-ip-1a" {

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-elastic-ip-1a"
      Project = "${var.project_name}"
    }
  )
}

resource "aws_eip" "elastic-ip-1b" {

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-elastic-ip-1b"
      Project = "${var.project_name}"
    }
  )
}
