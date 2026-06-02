output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "app_vpc" {
  description = "VPC Object"
  value       = aws_vpc.main
}