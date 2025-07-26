data "aws_acm_certificate" "s3_cloudfront" {
  domain   = local.domain
  provider = aws.us_east_1 # CloudFront requires ACM certificates to be in us-east-1
}
