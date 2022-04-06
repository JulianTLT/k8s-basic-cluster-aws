locals {
  common_tags = {
    ManagedBy = "terraform"
  }
}

module "cluster" {
  source = "../modules/eks-cp"

  cluster_full_name = var.cluster_full_name
  cluster_version = var.cluster_version
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  vpc_id = var.vpc_id
  common_tags = local.common_tags
}