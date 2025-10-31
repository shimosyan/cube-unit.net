resource "cloudflare_zero_trust_access_service_token" "github_actions_self_host_runner" {
  account_id = local.account_id
  name       = "Github Actions"
  duration   = "forever"
  zone_id    = null

  client_secret_version             = 1
  previous_client_secret_expires_at = "2014-01-01T05:20:00.12345Z"
}
