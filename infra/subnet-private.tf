resource "aws_subnet" "subnet-priv-vpc-eks-1a" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.region-current.name}a"

  tags = merge(
    local.tags,
    {
      Name                              = "subnet-priv-vpc-eks-1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "subnet-priv-vpc-eks-1b" {
  vpc_id            = aws_vpc.vpc-eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.region-current.name}b"

  tags = merge(
    local.tags,
    {
      Name                              = "subnet-priv-vpc-eks-1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}