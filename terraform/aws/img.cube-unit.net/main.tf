/*
  terraform 定義
*/
terraform {
  required_version = ">= 1.5.0"

  /*
    .tfstate は AWS S3 に保存すること
  */
  backend "s3" {
    bucket  = "terraform.cube-unit.net"
    region  = local.region
    key     = "cube-unit.net/aws/%%TARGET%%/terraform.tfstate"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = local.region
}
