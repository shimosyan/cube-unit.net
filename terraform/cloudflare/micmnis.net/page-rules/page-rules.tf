resource "cloudflare_page_rule" "root_domain" {
  zone_id  = local.zone
  target   = "${local.source_domain}/*"
  status   = "active"
  priority = 2

  actions = {
    forwarding_url = {
      status_code = 301
      url         = "https://${local.target_domain}/$1"
    }

    always_use_https            = null
    automatic_https_rewrites    = null
    browser_cache_ttl           = null
    browser_check               = null
    bypass_cache_on_cookie      = null
    cache_by_device_type        = null
    cache_deception_armor       = null
    cache_key_fields            = null
    cache_level                 = null
    cache_on_cookie             = null
    cache_ttl_by_status         = null
    disable_apps                = null
    disable_performance         = null
    disable_security            = null
    disable_zaraz               = null
    edge_cache_ttl              = null
    email_obfuscation           = null
    explicit_cache_control      = null
    host_header_override        = null
    ip_geolocation              = null
    mirage                      = null
    opportunistic_encryption    = null
    origin_error_page_pass_thru = null
    polish                      = null
    resolve_override            = null
    respect_strong_etag         = null
    response_buffering          = null
    rocket_loader               = null
    security_level              = null
    sort_query_string_for_cache = null
    ssl                         = null
    true_client_ip_header       = null
    waf                         = null
  }
}

resource "cloudflare_page_rule" "sub_domain" {
  zone_id  = local.zone
  target   = "*.${local.source_domain}/*"
  status   = "active"
  priority = 1

  actions = {
    forwarding_url = {
      status_code = 301
      url         = "https://$1.${local.target_domain}/$2"
    }

    always_use_https            = null
    automatic_https_rewrites    = null
    browser_cache_ttl           = null
    browser_check               = null
    bypass_cache_on_cookie      = null
    cache_by_device_type        = null
    cache_deception_armor       = null
    cache_key_fields            = null
    cache_level                 = null
    cache_on_cookie             = null
    cache_ttl_by_status         = null
    disable_apps                = null
    disable_performance         = null
    disable_security            = null
    disable_zaraz               = null
    edge_cache_ttl              = null
    email_obfuscation           = null
    explicit_cache_control      = null
    host_header_override        = null
    ip_geolocation              = null
    mirage                      = null
    opportunistic_encryption    = null
    origin_error_page_pass_thru = null
    polish                      = null
    resolve_override            = null
    respect_strong_etag         = null
    response_buffering          = null
    rocket_loader               = null
    security_level              = null
    sort_query_string_for_cache = null
    ssl                         = null
    true_client_ip_header       = null
    waf                         = null
  }
}
