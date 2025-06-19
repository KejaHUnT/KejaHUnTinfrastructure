terraform {
  backend "s3" {
    bucket         = "koske-kiptisha"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "koske-kiptisha-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "aws_ec2" {
  source             = "./modules/aws"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = var.security_group_id
}