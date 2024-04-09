resource "aws_route_table" "route-table-pub" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = merge(
    var.tags,
    {
      Name    = "${var.project_name}-route-table-pub"
      Project = "${var.project_name}"
    }
  )
}
