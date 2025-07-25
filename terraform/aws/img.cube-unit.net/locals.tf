locals {
  account_id = data.aws_caller_identity.current.account_id
  region = "ap-northeast-1"

  domain = "img.cube-unit.net"
}
