
output "lb_hostname" {
  value = "http://${aws_alb.main.dns_name}"
}

output "app_domain" {
  value = aws_route53_record.www.name
}