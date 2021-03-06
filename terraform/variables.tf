variable "app_name" {
  default = "test-app"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-central-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "TestAppEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "TestAppEcsAutoScaleRole"
}

variable "asg_min_desired_capacity" {
  description = "Auto scale Min Desired Capacity"
  default = 1
}

variable "asg_max_desired_capacity" {
  description = "Auto scale Max Desired Capacity"
  default = 3
}

variable "route53_domain" {
  description = "Main domain name"
  default     = "burakkaya.com"
}

variable "cloud_watch_log_group" {
  description = "Cloud Watch Log Group Name"
  default = "test-app"
}
variable "cloud_watch_log_stream" {
  description = "Cloud Watch Log Stream Name"
  default =  "test-app-log-stream"
}

variable "vpc_cidr_block" {
  description = "App VPC CIDR Block"
  default =  "172.17.0.0/16"
}

variable "az_count" {
  description = "Number of Availability Zones to cover in a given region"
  default     = "2"
}

variable "alb_protocol" {
  description = "Auto Load Balancer Protocol exposed"
  default     = "HTTP"
}

variable "alb_port" {
  description = "Auto Load Balancer Port exposed"
  default     = 80
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "burakkaya28/test-app:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}