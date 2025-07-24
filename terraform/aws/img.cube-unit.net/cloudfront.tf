resource "aws_cloudfront_distribution" "s3_distribution" {
  aliases                         = [
    local.domain
  ]

  comment                         = local.domain
  continuous_deployment_policy_id = null
  default_root_object             = null
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
    target_origin_id           = "${local.domain}.s3.amazonaws.com"
    trusted_key_groups         = []
    trusted_signers            = []
    viewer_protocol_policy     = "allow-all"

    function_association {
      event_type   = "viewer-request"
      function_arn = "arn:aws:cloudfront::158677943024:function/cloudfront-s3-redirect"
    }

    grpc_config {
      enabled = false
    }
  }

  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = "${local.domain}.s3.amazonaws.com"
    origin_access_control_id = "E1TWCAGJSMAD3U"
    origin_id                = "${local.domain}.s3.amazonaws.com"
    origin_path              = null
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:158677943024:certificate/046a3b30-3eae-40cc-90bb-19feafd24ff5"
    cloudfront_default_certificate = false
    iam_certificate_id             = null
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

import {
  to = aws_cloudfront_distribution.s3_distribution
  id = "E3KENKS175OARZ"
}
