#
# Amazon CloudFront
#
resource "cloudflare_dns_record" "__cname" {
  zone_id = local.zone
  name     = local.domain
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "d1llebz72xnuw2.cloudfront.net"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "stg_cname" {
  zone_id = local.zone
  name     = "stg.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "dsig5jnfxvftw.cloudfront.net"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "img_cname" {
  comment  = null
  content  = "dw9quim1v9m5z.cloudfront.net"
  data     = null
  name     = "img.cube-unit.net"
  priority = null
  proxied  = true
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4cf6092c08d51bb2492987f7afff6db3"
}

resource "cloudflare_dns_record" "static_cname" {
  zone_id = local.zone
  name     = "static.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "d31asbm9udkyt6.cloudfront.net"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

#
# AWS Certificate Manager
#

resource "cloudflare_dns_record" "_8242618cab64b01cdf547a3d364ba166_cname" {
  zone_id = local.zone
  name     = "_8242618cab64b01cdf547a3d364ba166.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_dd357e6683e843660679bf8cc70fba3a.mhbtsbpdnt.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_f3962467ba8eb86fcf422f2036a9d35b_cname" {
  zone_id = local.zone
  name     = "_f3962467ba8eb86fcf422f2036a9d35b.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_6482a7819c51b5975d4e2b03c9bc7663.xlfgrmvvlj.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_7a9d8b843b4c46424345f0482a5676b0_stg_cname" {
  zone_id = local.zone
  name     = "_7a9d8b843b4c46424345f0482a5676b0.stg.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_398eb9cb10d8da1963ec4ffa9d7e2a91.xlfgrmvvlj.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_9a4973010b62144f545cc655e205d74d_img_cname" {
  zone_id = local.zone
  name     = "_9a4973010b62144f545cc655e205d74d.img.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_4356463a999ddc9a8978f3174bcb0f3e.mhbtsbpdnt.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_611aff508c5835e68c193208a909392f_static_cname" {
  zone_id = local.zone
  name     = "_611aff508c5835e68c193208a909392f.static.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_8d4bb3d3ed2307bf78ce3640174ba95b.mhbtsbpdnt.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "_3bc47108074fe11a84f0b11183f7b9ce_www_cname" {
  zone_id = local.zone
  name     = "_3bc47108074fe11a84f0b11183f7b9ce.www.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = false
  content  = "_e11c3f98bbd99d1826d6677ba40f316e.mhbtsbpdnt.acm-validations.aws"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

#
# Cloudflare Tunnel
#
resource "cloudflare_dns_record" "proxmox_cname" {
  zone_id = local.zone
  name     = "proxmox.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "50efe36d-4645-4625-bad7-372f1ad4bd5b.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "nas_cname" {
  zone_id = local.zone
  name     = "nas.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "50efe36d-4645-4625-bad7-372f1ad4bd5b.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "grafana_cname" {
  zone_id = local.zone
  name     = "grafana.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "50efe36d-4645-4625-bad7-372f1ad4bd5b.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "vscode_cname" {
  zone_id = local.zone
  name     = "vscode.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "50efe36d-4645-4625-bad7-372f1ad4bd5b.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "minecraft_cname" {
  zone_id = local.zone
  name     = "minecraft.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "7ffbc2fd-c40c-4808-828c-a2776d737854.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}

resource "cloudflare_dns_record" "minecraft-game_cname" {
  zone_id = local.zone
  name     = "minecraft-game.${local.domain}"
  ttl     = 1
  type    = "CNAME"
  proxied  = true
  content  = "7ffbc2fd-c40c-4808-828c-a2776d737854.cfargotunnel.com"

  comment  = null
  data     = null
  priority = null
  settings = {
    flatten_cname = false
    ipv4_only     = null
    ipv6_only     = null
  }
  tags    = []
}
