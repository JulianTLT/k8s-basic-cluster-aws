aws_region           = "us-east-1"
clusters_name_prefix = "jsanchez-packtclusters"
vpc_block            = "10.40.0.0/20"
public_subnets_prefix_list = [
  "10.40.0.0/23",
  "10.40.2.0/23",
  "10.40.4.0/23",
]

private_subnets_prefix_list = [
  "10.40.6.0/23",
  "10.40.8.0/23",
  "10.40.10.0/23",
]