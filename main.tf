terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rm-st-tb"
    encrypt        = true
  }
}

provider "aws" {}
