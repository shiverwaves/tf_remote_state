terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "tf-rm-st-tbl"
    encrypt        = true
  }
}

provider "aws" {}