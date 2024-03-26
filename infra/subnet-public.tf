resource "aws_subnet" "subnet-pub-vpc-eks-1a" {
  vpc_id                  = aws_vpc.vpc-eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "subnet-pub-vpc-eks-1a"
    Project = "aws-eks-cluster"
  }
}

resource "aws_subnet" "subnet-pub-vpc-eks-1b" {
  vpc_id                  = aws_vpc.vpc-eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "subnet-pub-vpc-eks-1b"
    Project = "aws-eks-cluster"
  }
}

