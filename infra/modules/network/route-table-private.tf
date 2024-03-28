resource "aws_route_table" "route-table-pri-1a" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gateway-pub-1a.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-route-table-pri-1a"
    }
  )
}

resource "aws_route_table" "route-table-pri-1b" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gateway-pub-1b.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-route-table-pri-1b"
    }
  )
}