
output "lb_hostname" {
  value = "http://${aws_alb.main.dns_name}"
}