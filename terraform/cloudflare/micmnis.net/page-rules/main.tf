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
    key     = "cube-unit.net/cloudflare/micmnis.net/page-rules/terraform.tfstate"
    encrypt = true
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}
