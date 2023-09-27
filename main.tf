terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt-87c4ba1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rm-st-tbl-87c4ba1"
    encrypt        = true
  }
}

provider "aws" {}