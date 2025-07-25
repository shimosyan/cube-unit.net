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
    region  = "ap-northeast-1"
    key     = "cube-unit.net/aws/stg.cube-unit.net/terraform.tfstate"
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

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}
