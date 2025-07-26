resource "aws_cloudfront_function" "url_rewrite" {
  name    = "${local.domain}-url-rewrite"
  runtime = "cloudfront-js-1.0"
  comment = "URL rewrite function for cube-unit.net Hugo static site"
  publish = true
  code    = file("${path.module}/functions/url-rewrite.js")
}
