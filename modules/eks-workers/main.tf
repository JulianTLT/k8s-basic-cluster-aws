data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}

resource "aws_eks_node_group" "node-group" {
  cluster_name = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn = aws_iam_role.jsanchez-eks-node-role.arn
  subnet_ids = var.subnet_ids
  version = data.aws_eks_cluster.cluster.version
  scaling_config {
    desired_size = 1
    max_size = 4
    min_size = 1
  }

  instance_types = var.instance_types

  depends_on = [
    aws_iam_role_policy_attachment.jsanchez-eks-node-role-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.jsanchez-eks-node-role-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.jsanchez-eks-node-role-AmazonEC2ContainerRegistryReadOnly,
  ]
}

