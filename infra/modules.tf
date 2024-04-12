module "module-network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "module-cluster" {
  source                                = "./modules/cluster"
  project_name                          = var.project_name
  cluster_name                          = var.cluster_name
  managed_amazon_eks_cluster_policy_arn = var.managed_amazon_eks_cluster_policy_arn
  subnet_pub_1a                         = module.module-network.subnet-pub-1a
  subnet_pub_1b                         = module.module-network.subnet-pub-1b
  tags                                  = var.tags
}

module "module-mng-node-group" {
  source                                                    = "./modules/mng-node-group"
  project_name                                              = var.project_name
  cluster_name                                              = module.module-cluster.cluster-name
  capacity_type                                             = var.capacity_type
  instance_types                                            = var.instance_types
  managed_amazon_eks_worker_node_policy_arn                 = var.managed_amazon_eks_worker_node_policy_arn
  managed_amazon_ec2_container_registry_readonly_policy_arn = var.managed_amazon_ec2_container_registry_readonly_policy_arn
  managed_amazon_eks_cni_policy_arn                         = var.managed_amazon_eks_cni_policy_arn
  subnet_pri_1a                                             = module.module-network.subnet-pri-1a
  subnet_pri_1b                                             = module.module-network.subnet-pri-1b
  tags                                                      = var.tags
}

module "module-load-balancer-controller" {
  source            = "./modules/load-balancer-controller"
  project_name      = var.project_name
  cluster_name      = module.module-cluster.cluster-name
  oidc_url_identity = module.module-cluster.oidc-url-identity
  tags              = var.tags
}