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

module "module-mng-node-group" {
  source                                                    = "./modules/mng-node-group"
  project_name                                              = var.project_name
  cluster_name                                              = module.module-cluster.cluster-name
  managed_amazon_eks_worker_node_policy_arn                 = var.managed_amazon_eks_worker_node_policy_arn
  managed_amazon_ec2_container_registry_readonly_policy_arn = var.managed_amazon_ec2_container_registry_readonly_policy_arn
  managed_amazon_eks_cni_policy_arn                         = var.managed_amazon_eks_cni_policy_arn
  subnet-pri-1a                                             = module.module-network.subnet-pri-1a
  subnet-pri-1b                                             = module.module-network.subnet-pri-1b
  tags                                                      = local.tags
}