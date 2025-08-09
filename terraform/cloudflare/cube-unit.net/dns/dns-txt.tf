#
# SPF
#
resource "cloudflare_dns_record" "_spf_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 3600
  type    = "TXT"
  proxied = false
  content = "\"v=spf1 include:_spf.google.com -all\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}

#
# DKIM
#
resource "cloudflare_dns_record" "google__domainkey_txt" {
  zone_id = local.zone
  name    = "google._domainkey.${local.domain}"
  type    = "TXT"
  ttl     = 1
  proxied = false
  content = "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApOjMDJ60ojo0J97vts69tydBIeX0PMNS7Ezcb1TdCjYom1c9fu9Oc5aMI7wgNwYw+V2eYnJJAYfSGnIHRx3U8FTrfOVtxeKZ18TveQv0P1oqvp01W36MbYsJlfdpL9qUzXj16+f/gSnUvH0jpRO5hePWSu9EVZatXjlLB/DpBsQxdSGDzxs3PI/BRaBFhlGZ2\" \"O3PxHds+JLb1qaRmZHKR3Cc77qB8JRA7bUJbwBaZv1QVYmnJXdhAq77Hkz62lZF2yEIZ3H583LzoW+PWYKq2Ox9SEKVOgn06A6fA6RkyG8JJMFN6zK+l9U/G/r0SxDIo3jlBcbdKdEr9XFzqXpP6QIDAQAB\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}

#
# DMARC
#
resource "cloudflare_dns_record" "_dmarc_txt" {
  zone_id = local.zone
  name    = "_dmarc.${local.domain}"
  ttl     = 1
  type    = "TXT"
  proxied = false
  content = "\"v=DMARC1; p=quarantine; rua=mailto:dmarc_agg@vali.email;\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}

#
# Other
#
resource "cloudflare_dns_record" "_google-site-verification-1_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 3600
  type    = "TXT"
  proxied = false
  content = "\"google-site-verification=DbHqnBxlmgGLmviVZ51Wk2t301IXh6iltRpP-N0t3b0\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}

resource "cloudflare_dns_record" "_google-site-verification-2_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 3600
  type    = "TXT"
  proxied = false
  content = "\"google-site-verification=htuK1bXBDSGeB9FIbzEu1Z9aEPhIy2KI7r9DoVdQJHU\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags = []
}
