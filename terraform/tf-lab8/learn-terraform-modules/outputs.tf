# Output variable definitions
output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnets"
  value       = module.vpc.public_subnets
}

output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = [module.ec2_instances[0].public_ip, module.ec2_instances[1].public_ip]
}