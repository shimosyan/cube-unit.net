
resource "aws_cloudfront_distribution" "s3_distribution" {
  depends_on = [
    aws_s3_bucket.main,
  ]

  aliases                         = [
    local.domain
  ]

  comment                         = local.domain
  continuous_deployment_policy_id = null
  default_root_object             = "index.html"
  enabled                         = true
  http_version                    = "http2"
  is_ipv6_enabled                 = true
  price_class                     = "PriceClass_All"
  retain_on_delete                = false
  staging                         = false
  tags                            = {}
  tags_all                        = {}
  wait_for_deployment             = true
  web_acl_id                      = null

  default_cache_behavior {
    allowed_methods            = ["GET", "HEAD"]
    cache_policy_id            = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    default_ttl                = 0
    field_level_encryption_id  = null
    max_ttl                    = 0
    min_ttl                    = 0
    origin_request_policy_id   = null
    realtime_log_config_arn    = null
    response_headers_policy_id = null
    smooth_streaming           = false
    target_origin_id           = "${local.domain}.s3-ap-northeast-1.amazonaws.com"
    trusted_key_groups         = []
    trusted_signers            = []
    viewer_protocol_policy     = "redirect-to-https"

    grpc_config {
      enabled = false
    }
  }

  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = "${local.domain}.s3-ap-northeast-1.amazonaws.com"
    origin_access_control_id = aws_cloudfront_origin_access_control.s3_distribution.id
    origin_id                = "${local.domain}.s3-ap-northeast-1.amazonaws.com"
    origin_path              = null
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = data.aws_acm_certificate.s3_cloudfront.arn
    cloudfront_default_certificate = false
    iam_certificate_id             = null
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

resource "aws_cloudfront_origin_access_control" "s3_distribution" {
  description                       = null
  name                              = "${local.domain}.s3-ap-northeast-1.amazonaws.com"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
