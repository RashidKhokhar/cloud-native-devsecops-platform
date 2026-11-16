variable "project_name" {
  description = "Name of the project and base resource naming prefix"
  type        = string
  default     = "secure-kubernetes-devsecops-platform"
}

variable "aws_region" {
  description = "AWS region for infrastructure creation"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}
