# Origin 間の暗号化モードの設定
resource "cloudflare_zone_setting" "ssl" {
  zone_id    = local.zone
  setting_id = "ssl"
  # off, flexible, full, strict, or origin_pull
  value      = "strict"
}
