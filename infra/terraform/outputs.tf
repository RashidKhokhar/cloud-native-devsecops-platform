output "vpc_id" {
  description = "VPC ID created for the platform"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs created for the platform"
  value       = aws_subnet.public[*].id
}

output "security_group_id" {
  description = "Security group ID used by the app"
  value       = aws_security_group.app.id
}
