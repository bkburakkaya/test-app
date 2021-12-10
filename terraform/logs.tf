# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "test_app_log_group" {
  name              = "/ecs/test-app"
  retention_in_days = 30

  tags = {
    Name = "test-app-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "cb_log_stream" {
  name           = "test-app-log-stream"
  log_group_name = aws_cloudwatch_log_group.test_app_log_group.name
}