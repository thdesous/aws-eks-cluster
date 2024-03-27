resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-internet-gateway"
    }
  )
}