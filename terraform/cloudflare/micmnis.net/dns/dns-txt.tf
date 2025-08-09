#
# SPF
#
resource "cloudflare_dns_record" "_spf_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 1
  type    = "TXT"
  proxied  = false
  content  = "\"v=spf1 include:aspmx.googlemail.com ~all\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

#
# DKIM
#
resource "cloudflare_dns_record" "google__domainkey_txt" {
  zone_id = local.zone
  name     = "google._domainkey.${local.domain}"
  ttl     = 1
  type    = "TXT"
  proxied  = false
  content  = "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg+7Na1XmwmtD6vVL7kqsHNeBvru3XoulHnApyr0Y/0Vh5nkC6k1dbiYNDyBcHZKVzjf8izyaj6MqmuCO9tL5iAF+W7bEkCvzCwH7Mbq+xlYqb+NM8bUSal0X1fjYJpAgcsPpXcoMmXwdTHyRhn9Ihx3AUZN/U3FJLNP1qiE2CimkfjOpJR0TEWyKwC6TpcE32\" \"MP89tzqE0FSp+1snCImLOzMl276Rnws9Z4OtE+K70twjW1Ass5Mvh0AeeEJn4HxyXXXVCnrcfp5+S69LG4x2fh/kttB5/jyZWFxgKdflHuMK73AouMvr6GG0vHIcMvh1uSVlwi9u09qDm+nklf6uQIDAQAB\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

#
# DMARC
#
resource "cloudflare_dns_record" "_dmarc_txt" {
  zone_id = local.zone
  name     = "_dmarc.${local.domain}"
  ttl     = 1
  type    = "TXT"
  proxied  = false
  content  = "\"v=DMARC1; p=quarantine; rua=mailto:dmarc_agg@vali.email;\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

#
# Other
#
resource "cloudflare_dns_record" "_google-site-verification-1_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 1
  type    = "TXT"
  proxied  = false
  content  = "\"google-site-verification=1W9EBIyYxFc1qOJrEHiTPmpghv-83FMhMD0rgyZmIMk\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_google-site-verification-2_txt" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 1
  type    = "TXT"
  proxied  = false
  content  = "\"google-site-verification=CXad2TpNsyoiJgj3k75jYZ2aN5zYd9I6Ry7Q6M-65VQ\""

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = null
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}
