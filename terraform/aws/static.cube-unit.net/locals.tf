locals {
  account_id = data.aws_caller_identity.current.account_id
  region    = "ap-northeast-1"

  domain = "static.cube-unit.net"
}
