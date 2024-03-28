resource "aws_subnet" "subnet-pri-1a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.region-current.name}a"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-pri-1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "subnet-pri-1b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.region-current.name}b"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-pri-1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

# Provides a resource to create an association between a route table and a subnet

resource "aws_route_table_association" "route-table-ass-pri-1a" {
  subnet_id      = aws_subnet.subnet-pri-1a.id
  route_table_id = aws_route_table.route-table-pri-1a.id
}

resource "aws_route_table_association" "route-table-ass-pri-1b" {
  subnet_id      = aws_subnet.subnet-pri-1b.id
  route_table_id = aws_route_table.route-table-pri-1b.id
}