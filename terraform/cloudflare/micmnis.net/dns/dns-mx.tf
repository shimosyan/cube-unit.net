resource "cloudflare_dns_record" "_google_mx" {
  zone_id  = local.zone
  name     = local.domain
  ttl     = 1
  type    = "MX"
  priority = 1
  proxied  = false
  content  = "aspmx.l.google.com"

  comment  = null
  data     = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_google-alt1_mx" {
  zone_id  = local.zone
  name     = local.domain
  ttl     = 1
  type    = "MX"
  priority = 5
  proxied  = false
  content  = "alt1.aspmx.l.google.com"

  comment  = null
  data     = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_google-alt2_mx" {
  zone_id  = local.zone
  name     = local.domain
  ttl     = 1
  type    = "MX"
  priority = 5
  proxied  = false
  content  = "alt2.aspmx.l.google.com"

  comment  = null
  data     = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_google-alt3_mx" {
  zone_id  = local.zone
  name     = local.domain
  ttl     = 1
  type    = "MX"
  priority = 10
  proxied  = false
  content  = "alt3.aspmx.l.google.com"

  comment  = null
  data     = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_google-alt4_mx" {
  zone_id  = local.zone
  name     = local.domain
  ttl     = 1
  type    = "MX"
  priority = 10
  proxied  = false
  content  = "alt4.aspmx.l.google.com"

  comment  = null
  data     = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}
