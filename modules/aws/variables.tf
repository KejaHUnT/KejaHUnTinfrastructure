variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the AWS key pair to use"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the existing security group to attach"
  type        = string
}