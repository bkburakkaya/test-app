
output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "public_ip" {
  value = aws_eip.gw[1].public_ip
}