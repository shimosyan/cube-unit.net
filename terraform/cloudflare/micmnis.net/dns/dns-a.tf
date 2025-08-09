resource "cloudflare_dns_record" "__a" {
  zone_id = local.zone
  name    = local.domain
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "img_a" {
  zone_id = local.zone
  name    = "img.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "static_a" {
  zone_id = local.zone
  name    = "static.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "proxmox_a" {
  zone_id = local.zone
  name    = "proxmox.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "nas_a" {
  zone_id = local.zone
  name    = "nas.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "grafana_a" {
  zone_id = local.zone
  name    = "grafana.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "vscode_a" {
  zone_id = local.zone
  name    = "vscode.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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

resource "cloudflare_dns_record" "minecraft_a" {
  zone_id = local.zone
  name    = "minecraft.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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


resource "cloudflare_dns_record" "minecraft-game_a" {
  zone_id = local.zone
  name    = "minecraft-game.${local.domain}"
  ttl     = 1
  type    = "A"
  proxied = true
  content = "192.0.2.1"

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
