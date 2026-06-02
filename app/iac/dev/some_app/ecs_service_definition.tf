
resource "aws_ecs_service" "app" {
  name            = "my-app-service"
  cluster         = var.shared_aws_ecs_cluster_id
  task_definition = aws_ecs_task_definition.app_canary.arn
  desired_count   = 2

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
  }

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs_tasks.id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.shared_aws_lb_target_group_arn
    container_name   = "my-app"
    container_port   = 8080
  }
}