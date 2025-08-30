import {
  id = "${local.account_id}/50efe36d-4645-4625-bad7-372f1ad4bd5b"
  to = cloudflare_zero_trust_tunnel_cloudflared.main["internal"]
}

import {
  id = "${local.account_id}/50efe36d-4645-4625-bad7-372f1ad4bd5b"
  to = cloudflare_zero_trust_tunnel_cloudflared_config.main["internal"]
}

import {
  id = "${local.account_id}/7ffbc2fd-c40c-4808-828c-a2776d737854"
  to = cloudflare_zero_trust_tunnel_cloudflared.main["external"]
}

import {
  id = "${local.account_id}/7ffbc2fd-c40c-4808-828c-a2776d737854"
  to = cloudflare_zero_trust_tunnel_cloudflared_config.main["external"]
}
