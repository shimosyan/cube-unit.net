resource "aws_s3_bucket" "main" {
  bucket = "img.cube-unit.net"
  region = local.region
}

#
import {
  id = "img.cube-unit.net"
  to = aws_s3_bucket.main
}
