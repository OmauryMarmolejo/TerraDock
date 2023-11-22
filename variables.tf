variable "aws_access_key" {
  description = "The IAM public access key"
}

variable "aws_secret_key" {
  description = "The IAM secret access key"
}

variable "aws_region" {
  description = "The AWS region to use"
}

variable "ec2_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role name"
  default     = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of availability zones to use"
  default     = 2
}

variable "app_image" {
  description = "The Docker image to use for the app"
  default     = "bradfordhamilton/crystal_blockchain:latest"
}

variable "app_port" {
  description = "The port the app listens on"
  default     = 3000
}

variable "app_count" {
  description = "The number of app instances to run"
  default     = 3
}

variable "fargate_cpu" {
  description = "The amount of CPU to allocate to each Fargate task"
  default     = 1024
}

variable "fargate_memory" {
  description = "The amount of memory to allocate to each Fargate task"
  default     = 2048
}
