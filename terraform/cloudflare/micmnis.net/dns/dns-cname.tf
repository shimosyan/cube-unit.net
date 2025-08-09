#
# AWS Certificate Manager
#
resource "cloudflare_dns_record" "_7583d4fb40b603f3f950799759eb10a1_cname" {
  zone_id = local.zone
  name    = "_7583d4fb40b603f3f950799759eb10a1.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied = false
  content = "_6e71ae4b05a8957cf3d155c5ca9908e5.yqdvztwmqr.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}

resource "cloudflare_dns_record" "_4013b3d0ef77fb56b06e8c7cb3607edc_www_cname" {
  zone_id = local.zone
  name    = "_4013b3d0ef77fb56b06e8c7cb3607edc.www.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied = false
  content = "_35b8ae406a4620404bc13dcb6f413f06.yqdvztwmqr.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}
