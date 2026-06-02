output "private_subnet_ids" {
  description = "IDs of the public subnets"
  value = module.vpc.private_subnet_ids
}

output "iam_base_ecs_role_arn" {
  description = "Base role arn to execute ECS Task"
  value = module.iam.ecs_iam_base_role.arn
}

output "apps_alb_security_group_id" {
  value = module.ec2.shared_alb_security_group.id
}

output "shared_ecs_cluster_id" {
  value = module.ecs.shared_ecs_cluster.id
}

output "shared_aws_lb_target_group_arn" {
  value = module.ec2.shared_aws_lb_target_group.arn
}

output "shared_vpc_id" {
  value = module.vpc.shared_vpc.id
}

output "shared_route_53_zone_name" {
  value = module.route_53.route_53_zone.name
}

output "shared_alb_dns_name" {
  value = module.ec2.shared_alb.dns_name
}

output "shared_alb_zone_id" {
  value = module.ec2.shared_alb.zone_id
}