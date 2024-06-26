terraform {

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.17.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.8.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region_name
}

provider "kubernetes" {
  host                   = module.module-cluster.cluster-endpoint
  cluster_ca_certificate = base64decode(module.module-cluster.cluster-ca-cert)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.module-cluster.cluster-name]
    command     = "aws"
  }
}

provider "helm" {
  kubernetes {
    host                   = module.module-cluster.cluster-endpoint
    cluster_ca_certificate = base64decode(module.module-cluster.cluster-ca-cert)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.module-cluster.cluster-name]
      command     = "aws"
    }
  }
}