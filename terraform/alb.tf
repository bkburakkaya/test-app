resource "aws_alb" "main" {
  name            = "${var.app_name}-load-balancer"
  subnets         = aws_subnet.public.*.id
  security_groups = [aws_security_group.lb.id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_alb_target_group" "app" {
  name        =  "${var.app_name}-target-group"
  port        = var.alb_port
  protocol    = var.alb_protocol
  vpc_id      = aws_vpc.main.id
  target_type = "ip"

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = var.alb_protocol
    matcher             = "200"
    timeout             = "3"
    path                = var.health_check_path
    unhealthy_threshold = "2"
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Redirect all traffic from the ALB to the target group
resource "aws_alb_listener" "front_end" {
  load_balancer_arn = aws_alb.main.id
  port              = var.alb_port
  protocol          = var.alb_protocol

  default_action {
    target_group_arn = aws_alb_target_group.app.id
    type             = "forward"
  }

  lifecycle {
    create_before_destroy = true
  }
}