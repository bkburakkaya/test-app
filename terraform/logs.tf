# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.cloud_watch_log_group
  retention_in_days = 30
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = var.cloud_watch_log_stream
  log_group_name = aws_cloudwatch_log_group.log_group.name
}