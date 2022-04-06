terraform {
  backend "s3" {
    bucket         = "jsanchez-packtclusters-vpc-terraform-state"
    key            = "jsanchez-packtclusters-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jsanchez-packtclusters-vpc-terraform-state-lock-dynamodb"
  }

  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

}

provider "aws" {
  region  = var.aws_region
}