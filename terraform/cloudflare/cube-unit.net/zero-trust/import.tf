import {
  id = "2cd38e1f6940edb77a35a425ba3dc210/a3e6a833-6bb7-45bc-b1d6-a6e8af46ef0a"
  to = cloudflare_zero_trust_access_policy.google_workspace_sso
}

import {
  id = "2cd38e1f6940edb77a35a425ba3dc210/25398ae9-4d82-4cd2-b903-26e553cc0547"
  to = cloudflare_zero_trust_access_policy.github_actions_self_host_runner
}

import {
  id = "accounts/2cd38e1f6940edb77a35a425ba3dc210/35cf3bb2-b20f-4c65-868a-03e456e20d04"
  to = cloudflare_zero_trust_access_service_token.github_actions_self_host_runner
}

import {
  id = "accounts/2cd38e1f6940edb77a35a425ba3dc210/f8f9618e-78f6-478e-96c1-ac91380ce5d6"
  to = cloudflare_zero_trust_access_application.stg
}

import {
  id = "accounts/2cd38e1f6940edb77a35a425ba3dc210/09192c6d-3c76-4a14-afe9-23af24ca3222"
  to = cloudflare_zero_trust_access_application.proxmox
}
