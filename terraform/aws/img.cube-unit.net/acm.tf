data "aws_acm_certificate" "s3_cloudfront" {
  domain   = local.domain
}
