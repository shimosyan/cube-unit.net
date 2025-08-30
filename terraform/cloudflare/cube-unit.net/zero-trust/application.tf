/**
* Cloudflare を用いた認証付きアクセス管理 (Zero Trust Application)
*/
locals {
  zero_trust_application_config = {
    stg = {
      name   = "Cube-Unit 公式サイト Staging環境"
      domain = "stg.cube-unit.net"
      type   = "self_hosted"
      uris = [
        "stg.cube-unit.net"
      ]
      policies = [
        {
          id         = cloudflare_zero_trust_access_policy.google_workspace_sso.id
          precedence = 1
        },
      ]
    },
    proxmox = {
      name   = "Cube-Unit Proxmox Service"
      domain = "proxmox.cube-unit.net"
      type   = "self_hosted"
      uris = [
        "proxmox.cube-unit.net",
      ]
      policies = [
        {
          id         = cloudflare_zero_trust_access_policy.github_actions_self_host_runner.id
          precedence = 1
        },
        {
          id         = cloudflare_zero_trust_access_policy.google_workspace_sso.id
          precedence = 2
        },
      ]
    },
    internal = {
      name   = "Cube-Unit Internal Services"
      domain = "nas.cube-unit.net"
      type   = "self_hosted"
      uris = [
        "nas.cube-unit.net",
        "vscode.cube-unit.net",
        "grafana.cube-unit.net",
      ]
      policies = [
        {
          id         = cloudflare_zero_trust_access_policy.google_workspace_sso.id
          precedence = 1
        },
      ]
    }
  }
}

resource "cloudflare_zero_trust_access_application" "main" {
  for_each = local.zero_trust_application_config

  account_id = local.account_id
  name       = each.value.name
  domain     = each.value.domain
  type       = each.value.type

  allowed_idps = [
    local.google_workspace_sso_id
  ]

  destinations = [
    for url in each.value.uris :
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = url
      vnet_id     = null
    }
  ]

  policies = each.value.policies

  allow_authenticate_via_warp     = null
  allow_iframe                    = null
  app_launcher_logo_url           = null
  app_launcher_visible            = true
  auto_redirect_to_identity       = false
  bg_color                        = null
  cors_headers                    = null
  custom_deny_message             = null
  custom_deny_url                 = null
  custom_non_identity_deny_url    = null
  custom_pages                    = null
  enable_binding_cookie           = false
  footer_links                    = null
  header_bg_color                 = null
  http_only_cookie_attribute      = false
  landing_page_design             = null
  logo_url                        = null
  options_preflight_bypass        = false
  path_cookie_attribute           = null
  read_service_tokens_from_header = null
  saas_app                        = null
  same_site_cookie_attribute      = null
  scim_config                     = null
  service_auth_401_redirect       = null
  session_duration                = "24h"
  skip_app_launcher_login_page    = null
  skip_interstitial               = null
  tags                            = []
  target_criteria                 = null
  zone_id                         = null
}
