resource "aws_cloudfront_function" "url_rewrite" {
  name    = "${replace(local.domain, ".", "-")}-url-rewrite"
  runtime = "cloudfront-js-2.0"
  comment = "URL rewrite function for ${local.domain} Hugo static site"
  publish = true
  code    = file("${path.module}/functions/url-rewrite.js")
}
