# TerraDock

TerraDock is a Terraform project for deploying a scalable and resilient Dockerized application on AWS using ECS (Elastic Container Service) and other related services.

## Table of Contents

- [Introduction](#introduction)
- [Files and Directory Structure](#files-and-directory-structure)
- [Prerequisites](#prerequisites)
- [How to Use](#how-to-use)
- [Variables](#variables)
- [Outputs](#outputs)

## Introduction

TerraDock simplifies the deployment of a Dockerized application on AWS, providing infrastructure as code for services like ECS, ALB, Auto Scaling, CloudWatch, and more.

## Files and Directory Structure

- **alb.tf**: Defines an AWS Application Load Balancer.
- **app.js**: Sample Node.js application code.
- **auto_scaling.tf**: Configures auto-scaling policies and CloudWatch alarms.
- **Dockerfile**: Dockerfile for building the application image.
- **ecs.tf**: Manages ECS cluster, task definition, and service.
- **iam.tf**: Defines IAM roles and policies.
- **logs.tf**: Configures CloudWatch Log Groups.
- **network.tf**: Sets up VPC, subnets, security groups, and routing.
- **outputs.tf**: Defines Terraform output variables.
- **provider.tf**: Specifies the AWS provider configuration.
- **security.tf**: Manages security groups.
- **variables.tf**: Declares input variables.

## Prerequisites

Before using TerraDock, ensure you have the following:

- [Terraform](https://www.terraform.io/) installed.
- AWS credentials with the necessary permissions.

## How to Use

1. Clone the repository.
2. Configure your AWS credentials using environment variables or AWS CLI.
3. Customize variables in `variables.tf` if needed.
4. Run `terraform init` to initialize the project.
5. Run `terraform apply` to create the infrastructure.

## Variables

- **aws_access_key**: AWS access key.
- **aws_secret_key**: AWS secret key.
- **aws_region**: AWS region.
- **ec2_task_execution_role_name**: ECS task execution role name.
- **ecs_auto_scale_role_name**: ECS auto scale role name.
- **az_count**: Number of availability zones to use.
- **app_image**: Docker image for the app.
- **app_port**: Port the app listens on.
- **app_count**: Number of app instances to run.
- **health_check_path**: Path for the health check.
- **fargate_cpu**: CPU allocated to each Fargate task.
- **fargate_memory**: Memory allocated to each Fargate task.

## Outputs

- **alb_hostname**: DNS name of the Application Load Balancer.