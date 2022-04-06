output "nodegroup_arn" {
  value = aws_eks_node_group.node-group.arn
}

output "jsanchez-eks-node-role" {
  value = aws_iam_role.jsanchez-eks-node-role.arn
}