resource "aws_s3_bucket" "img_cube-unit_net" {
  bucket = "img.cube-unit.net"
}

import {
  id = "img.cube-unit.net"
  to = aws_s3_bucket.img_cube-unit_net
}
