terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt-5a46564"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rm-st-tbl-5a46564"
    encrypt        = true
  }
}

provider "aws" {}