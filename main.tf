terraform {
  backend "s3" {
    bucket         = "koske-kiptisha"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "koske-kiptisha-locks"
    encrypt        = true
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

provider "aws" {
  region = var.aws_region
}


module "github_repo" {
  source = "./modules/github"
  repo_name = var.repo_name
  count  = var.enable_github_module ? 1 : 0
  github_token = var.github_token
}

module "aws_ec2" {
  source             = "./modules/aws"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = var.security_group_id
}