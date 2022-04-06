output "ca" {
  value = module.cluster.ca
}

output "endpoint" {
  value = module.cluster.endpoint
}

output "security_group" {
  value = module.cluster.security_group
}
