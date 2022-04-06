terraform {
  backend "s3" {
    bucket = "jsanchez-packtclusters-terraform-state"
    key    = "packtclusters.tfstate"
    region = "us-east-1"
    dynamodb_table = "jsanchez-packtclusters-terraform-state-lock-dynamodb"
  }

  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}