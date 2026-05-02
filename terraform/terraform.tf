terraform {
    backend "s3" {
      bucket = "tf-gha-state-amansrsnv"
      key = "practice/terraform.tfstate"
      region = "us-east-1"
      dynamodb-table = "tf-gha-lock"
      encrypt = true
    }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "practice" {
  name = "/gha-practice/message"
  type = "String"
  value = "hello"
}