output "ecs_iam_base_role" {
  description = "Base Role to execute ECS Task"
  value       = aws_iam_role.ecs_task_execution_role
}