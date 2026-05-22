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

resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in var.certificate.domain_validation_options :
    dvo.domain_name => {
      name   = dvo.resource_record_name
      type   = dvo.resource_record_type
      record = dvo.resource_record_value
    }
  }

  zone_id = data.aws_route53_zone.main.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = 300
  records = [each.value.record]

  allow_overwrite = true
}

resource "aws_acm_certificate_validation" "main" {
  certificate_arn         = var.certificate.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
}