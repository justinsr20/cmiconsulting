output "shared_alb_security_group" {
  value = aws_security_group.alb
}

output "shared_aws_lb_target_group" {
  value = aws_lb_target_group.app
}

output "shared_alb" {
  value = aws_lb.apps
}