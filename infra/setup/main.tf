terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "jasonp-devops-deploy-bucket"
    key            = "tf-state-setup"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "devops-deploy-tf-lock"
  }
}

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
