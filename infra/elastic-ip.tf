resource "aws_eip" "elastic-ip-1a" {

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-elastic-ip-1a"
    }
  )
}

resource "aws_eip" "elastic-ip-1b" {

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-elastic-ip-1b"
    }
  )
}
