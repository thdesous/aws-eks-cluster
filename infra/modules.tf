module "module-network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "module-cluster" {
  source                                = "./modules/cluster"
  project_name                          = var.project_name
  managed_amazon_eks_cluster_policy_arn = var.managed_amazon_eks_cluster_policy_arn
  subnet-pub-1a                         = module.module-network.subnet-pub-1a
  subnet-pub-1b                         = module.module-network.subnet-pub-1b
  tags                                  = local.tags
}