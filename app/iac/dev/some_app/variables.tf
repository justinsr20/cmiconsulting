variable "shared_ecs_task_execution_role_arn" {
  type = string
}

variable "shared_vpc_id" {
  type = string
}

variable "shared_alb_security_group_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "shared_aws_lb_target_group_arn" {
  type = string
}

variable "shared_aws_ecs_cluster_id" {
  type = string
}