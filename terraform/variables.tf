variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "allowed_ssh_cidr" {
  type        = string
  default     = "0.0.0.0/0" # demo default; tighten to your IP later
  description = "CIDR allowed to SSH to instances"
}