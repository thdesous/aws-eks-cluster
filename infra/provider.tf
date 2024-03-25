terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
  backend "s3" {
    bucket = "s3-aws-eks-cluster"
    key    = "project/aws-eks-cluster/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}