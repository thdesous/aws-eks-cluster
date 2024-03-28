resource "aws_nat_gateway" "nat-gateway-pub-1a" {
  allocation_id = aws_eip.elastic-ip-1a.id
  subnet_id     = aws_subnet.subnet-pub-1a.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat-gateway-pub-1a"
    }
  )
}

resource "aws_nat_gateway" "nat-gateway-pub-1b" {
  allocation_id = aws_eip.elastic-ip-1b.id
  subnet_id     = aws_subnet.subnet-pub-1b.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat-gateway-pub-1b"
    }
  )
}