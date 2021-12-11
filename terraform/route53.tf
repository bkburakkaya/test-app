resource "aws_route53_zone" "primary" {
  name = var.route53_domain

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "${var.app_name}.${aws_route53_zone.primary.name}"
  type    = "A"

  alias {
    name                   = aws_alb.main.dns_name
    zone_id                = aws_alb.main.zone_id
    evaluate_target_health = true
  }

  lifecycle {
    create_before_destroy = true
  }
}