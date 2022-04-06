module "jsanchez-packtcluster-nodegroup1" {
  source = "../modules/eks-workers"

  cluster_name = var.cluster_name
  subnet_ids = var.subnet_ids
  node_group_name = var.node_group_name
  instance_types = var.instance_types
}