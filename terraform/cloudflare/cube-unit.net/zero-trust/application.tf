resource "cloudflare_zero_trust_access_application" "stg" {
  account_id                   = local.account_id
  name                       = "stg.cube-unit.net"
  domain                     = "stg.cube-unit.net"
  type                            = "self_hosted"

  allowed_idps                 = [
    local.google_workspace_sso_id
  ]

  destinations = [
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = "stg.cube-unit.net"
      vnet_id     = null
    },
  ]

  policies = [
    {
      id = cloudflare_zero_trust_access_policy.google_workspace_sso.id
      precedence = 1
    },
  ]

  allow_authenticate_via_warp  = null
  allow_iframe                 = null
  app_launcher_logo_url        = null
  app_launcher_visible         = true
  auto_redirect_to_identity    = false
  bg_color                     = null
  cors_headers                 = null
  custom_deny_message          = null
  custom_deny_url              = null
  custom_non_identity_deny_url = null
  custom_pages                 = null
  enable_binding_cookie      = false
  footer_links               = null
  header_bg_color            = null
  http_only_cookie_attribute = false
  landing_page_design        = null
  logo_url                   = null
  options_preflight_bypass   = false
  path_cookie_attribute      = null
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


resource "cloudflare_zero_trust_access_application" "proxmox" {
  account_id                   = local.account_id
  name                       = "cube-unit Internal Service"
  domain                     = "proxmox.cube-unit.net"
  type                            = "self_hosted"

  allowed_idps                 = [
    local.google_workspace_sso_id
  ]

  destinations = [
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = "proxmox.cube-unit.net"
      vnet_id     = null
    },
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = "nas.cube-unit.net"
      vnet_id     = null
    },
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = "vscode.cube-unit.net"
      vnet_id     = null
    },
    {
      cidr        = null
      hostname    = null
      l4_protocol = null
      port_range  = null
      type        = "public"
      uri         = "grafana.cube-unit.net"
      vnet_id     = null
    },
  ]

  policies = [
    {
      id = cloudflare_zero_trust_access_policy.github_actions_self_host_runner.id
      precedence = 1
    },
    {
      id = cloudflare_zero_trust_access_policy.google_workspace_sso.id
      precedence = 2
    },
  ]

  allow_authenticate_via_warp  = null
  allow_iframe                 = null
  app_launcher_logo_url        = null
  app_launcher_visible         = true
  auto_redirect_to_identity    = false
  bg_color                     = null
  cors_headers                 = null
  custom_deny_message          = null
  custom_deny_url              = null
  custom_non_identity_deny_url = null
  custom_pages                 = null
  enable_binding_cookie      = false
  footer_links               = null
  header_bg_color            = null
  http_only_cookie_attribute = true
  landing_page_design        = null
  logo_url                   = null
  options_preflight_bypass   = false
  path_cookie_attribute      = null
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
