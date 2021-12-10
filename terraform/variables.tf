variable "app_name" {
  default = "test-app"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-central-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "asg_min_desired_capacity" {
  description = "Auto scale Min Desired Capacity"
  default = 1
}

variable "asg_max_desired_capacity" {
  description = "Auto scale Max Desired Capacity"
  default = 3
}


variable "cloud_watch_log_group" {
  description = "Cloud Watch Log Group Name"
  default = "/ecs/test-app"
}
variable "cloud_watch_log_stream" {
  description = "Cloud Watch Log Stream Name"
  default =  "test-app-log-stream"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
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
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}