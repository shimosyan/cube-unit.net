resource "cloudflare_zero_trust_organization" "main" {
  zone_id     = null
  account_id  = local.account_id
  name        = "cube-unit.cloudflareaccess.com"
  auth_domain = "cube-unit.cloudflareaccess.com"

  login_design = {
    background_color = "#ffffff"
    footer_text      = null
    header_text      = null
    logo_path        = "https://img.cube-unit.net/uploads/2024/01/cropped-favicon-192x192.png"
    text_color       = null
  }

  allow_authenticate_via_warp        = false
  auto_redirect_to_identity          = false
  custom_pages                       = null
  is_ui_read_only                    = false
  session_duration                   = null
  ui_read_only_toggle_reason         = null
  user_seat_expiration_inactive_time = null
  warp_auth_session_duration         = null
}
