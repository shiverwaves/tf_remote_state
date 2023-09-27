terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "tf-rm-st-bkt-92a79a6"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rm-st-tbl-92a79a6"
    encrypt        = true
  }
}

provider "aws" {}