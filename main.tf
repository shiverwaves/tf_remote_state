terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt-923a07d"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rm-st-tbl-923a07d"
    encrypt        = true
  }
}

provider "aws" {}
