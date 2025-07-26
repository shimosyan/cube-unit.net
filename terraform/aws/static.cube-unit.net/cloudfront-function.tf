resource "aws_cloudfront_function" "asset_redirect" {
  name    = "${replace(local.domain, ".", "-")}-asset-redirect"
  runtime = "cloudfront-js-2.0"
  comment = "Asset domain redirect function for ${local.domain}"
  publish = true
  code    = file("${path.module}/functions/url-redirect.js")
}
