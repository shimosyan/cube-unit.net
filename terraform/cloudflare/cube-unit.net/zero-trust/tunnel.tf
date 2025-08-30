/**
* Cloudflare と shimosyan/raspberry-pi-cluster を繋ぐ Zero Trust Tunnel
*
* ref.
* - https://github.com/shimosyan/raspberry-pi-cluster
*/
locals {
  zero_trust_tunnel_config = {
    internal = {
      name   = "cube-unit.net Internal Service"
      source = "cloudflare"
      ingress = [
        {
          hostname = "proxmox.cube-unit.net"
          service  = "http://192.168.6.65:80"
          access = {
            aud_tag = [
              cloudflare_zero_trust_access_application.main["proxmox"].aud,
            ]
            required  = true
            team_name = "cube-unit"
          }
        },
        {
          hostname = "nas.cube-unit.net"
          service  = "http://192.168.6.65:81"
          access = {
            aud_tag = [
              cloudflare_zero_trust_access_application.main["internal"].aud,
            ]
            required  = true
            team_name = "cube-unit"
          }
        },
        {
          hostname = "vscode.cube-unit.net"
          service  = "http://192.168.6.65:82"
          access = {
            aud_tag = [
              cloudflare_zero_trust_access_application.main["internal"].aud,
            ]
            required  = true
            team_name = "cube-unit"
          }
        },
        {
          hostname = "grafana.cube-unit.net"
          service  = "http://192.168.6.65:83"
          access = {
            aud_tag = [
              cloudflare_zero_trust_access_application.main["internal"].aud,
            ]
            required  = true
            team_name = "cube-unit"
          }
        }
      ]
    },
    external = {
      name   = "cube-unit.net External Service"
      source = "cloudflare"
      ingress = [
        {
          hostname = "minecraft.cube-unit.net"
          service  = "http://192.168.6.68:80"
          access   = null
        },
        {
          hostname = "minecraft-game.cube-unit.net"
          service  = "tcp://192.168.6.68:25565"
          access   = null
        }
      ]
    }
  }
}

resource "cloudflare_zero_trust_tunnel_cloudflared" "main" {
  for_each = local.zero_trust_tunnel_config

  account_id = local.account_id
  config_src = "cloudflare"
  name       = each.value.name
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "main" {
  for_each = local.zero_trust_tunnel_config

  account_id = local.account_id
  tunnel_id  = cloudflare_zero_trust_tunnel_cloudflared.main[each.key].id
  source     = each.value.source

  config = {
    ingress = concat(
      [
        for item in each.value.ingress :
        {
          hostname = item.hostname
          service  = item.service
          path     = null
          origin_request = {
            access                   = item.access
            ca_pool                  = null
            connect_timeout          = null
            disable_chunked_encoding = null
            http2_origin             = null
            http_host_header         = null
            keep_alive_connections   = null
            keep_alive_timeout       = null
            no_happy_eyeballs        = null
            no_tls_verify            = null
            origin_server_name       = null
            proxy_type               = null
            tcp_keep_alive           = null
            tls_timeout              = null
          }
        }
      ],
      [
        {
          hostname       = null
          service        = "http_status:404"
          path           = null
          origin_request = null
        }
      ]
    )
  }
}
