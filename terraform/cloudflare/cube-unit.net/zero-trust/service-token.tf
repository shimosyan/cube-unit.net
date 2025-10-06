resource "cloudflare_zero_trust_access_service_token" "github_actions_self_host_runner" {
  account_id = local.account_id
  name       = "Github Actions"
  duration   = "forever"
  zone_id    = null

  client_secret_version = 1
}
