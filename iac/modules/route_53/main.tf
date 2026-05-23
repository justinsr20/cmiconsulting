# resource "aws_route53_zone" "main" {
#   name = var.domain_name
#
#   tags = {
#     Name        = var.domain_name
#     Environment = var.environment
#     Project     = var.project_name
#   }
#
#   # Don't delete this as it will cause major issues
#   lifecycle {
#     prevent_destroy = true
#   }
# }

data "aws_route53_zone" "main" {
  name         = var.domain_name
  private_zone = false
}

