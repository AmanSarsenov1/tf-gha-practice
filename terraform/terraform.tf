terraform {
  required_version = ">=1.6.0"

  backend "s3" {}

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "practice" {
  name = "/gha-practice/${var.environment}/message"
  type = "String"
  value = var.ssm_value
}