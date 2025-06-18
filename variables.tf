variable "enable_github_module" {
  type    = bool
  default = false
}

#variable "github_token" {
#  description = "GitHub personal access token"
#  type        = string
#  sensitive   = true
#}

#variable "github_owner" {
#  description = "GitHub organization or user"
#  type        = string
#}

variable "repo_name" {
  description = "Name of the GitHub repository"
  type        = string
}

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
