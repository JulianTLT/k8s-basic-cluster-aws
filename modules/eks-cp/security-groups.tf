resource "aws_security_group" "eks_cluster_sg" {
  name = "${var.cluster_full_name}-cluster"
  description = "EKS cluster Security group"
  vpc_id = var.vpc_id
  tags = merge(
  var.common_tags,
  {
    Name = "${var.cluster_full_name}-cluster-sg"
    "kubernetes.io/cluster/${var.cluster_full_name}" = "owned"
  },
  )
  
  ingress {
    from_port = 443
    protocol = "tcp"
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
  }


}
