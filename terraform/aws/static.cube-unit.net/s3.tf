resource "aws_s3_bucket" "main" {
  bucket = "static.cube-unit.net"
  region = local.region
}

import {
  id = "static.cube-unit.net"
  to = aws_s3_bucket.main
}
