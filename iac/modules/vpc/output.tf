output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "shared_vpc" {
  description = "Shared VPC Object"
  value       = aws_vpc.main
}