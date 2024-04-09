resource "aws_subnet" "subnet-pub-1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.region-current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-subnet-pub-1a"
      Project                  = "${var.project_name}"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "subnet-pub-1b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.region-current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-subnet-pub-1b"
      Project                  = "${var.project_name}"
      "kubernetes.io/role/elb" = 1
    }
  )
}

# Provides a resource to create an association between a route table and a subnet

resource "aws_route_table_association" "route-table-ass-pub-1a" {
  subnet_id      = aws_subnet.subnet-pub-1a.id
  route_table_id = aws_route_table.route-table-pub.id
}

resource "aws_route_table_association" "route-table-ass-pub-1b" {
  subnet_id      = aws_subnet.subnet-pub-1b.id
  route_table_id = aws_route_table.route-table-pub.id
}