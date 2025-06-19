variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the AWS key pair"
  type        = string
}

variable "security_group_id" {
  description = "ID of an existing security group"
  type        = string
}
