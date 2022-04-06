variable "cluster_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "node_group_name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "instance_types" {
  type = list(string)
}