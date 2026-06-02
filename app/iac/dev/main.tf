module "some_app" {
  source = "./some_app"

  private_subnet_ids = [
    "subnet-0945c7c9998a0f33f",
    "subnet-05f9ad9703b32eaa0",
  ]
  shared_alb_security_group_id       = "sg-075122b5c4fbd2dfa"
  shared_aws_ecs_cluster_id          = "arn:aws:ecs:ap-southeast-2:211125680866:cluster/shared-apps"
  shared_aws_lb_target_group_arn     = "arn:aws:elasticloadbalancing:ap-southeast-2:211125680866:targetgroup/apps-tg/fc27220c41301ce8"
  shared_ecs_task_execution_role_arn = "arn:aws:iam::211125680866:role/ecsTaskExecutionRole"
  shared_vpc_id                      = "vpc-022deef369d479e7c"
  shared_alb_dns_name                = "apps-66327383.ap-southeast-2.elb.amazonaws.com"
  shared_alb_zone_id                 = "Z1GM3OXH4ZPM65"
}