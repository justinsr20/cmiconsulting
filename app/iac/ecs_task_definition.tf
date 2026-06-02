resource "aws_ecs_task_definition" "app_canary" {
  family                   = "my-app-canary"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"

  cpu    = "512"
  memory = "1024"

  execution_role_arn = var.ecs_task_execution_role.arn

  container_definitions = jsonencode([
    {
      name      = "my-app"
      image     = "hashicorp/http-echo:latest"
      essential = true

      command = [
        "-listen=:8080",
        "-text=hello from CANARY version"
      ]

      portMappings = [
        {
          containerPort = 8080
          hostPort      = 8080
          protocol      = "tcp"
        }
      ]
    }
  ])
}