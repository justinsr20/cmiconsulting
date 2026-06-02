data "aws_route53_zone" "main" {
  name         = "cmiconsulting.com.au"
  private_zone = false
}

resource "aws_route53_record" "app" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "api.${data.aws_route53_zone.main.name}"
  type    = "A"

  alias {
    name                   = var.shared_alb_dns_name
    zone_id                = var.shared_alb_zone_id
    evaluate_target_health = true
  }
}