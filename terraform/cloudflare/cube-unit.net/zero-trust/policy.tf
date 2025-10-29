#
# Google Workspace SSO
#
resource "cloudflare_zero_trust_access_policy" "google_workspace_sso" {
  account_id       = local.account_id
  name             = "GoogleWS SSO"
  decision         = "allow"
  session_duration = "24h"

  require = [
  ]

  include = [
    {
      login_method = {
        id = local.google_workspace_sso_id
      }

      any_valid_service_token = null
      auth_context            = null
      auth_method             = null
      azure_ad                = null
      certificate             = null
      common_name             = null
      device_posture          = null
      email                   = null
      email_domain            = null
      email_list              = null
      everyone                = null
      external_evaluation     = null
      geo                     = null
      github_organization     = null
      group                   = null
      gsuite                  = null
      ip                      = null
      ip_list                 = null
      linked_app_token        = null
      oidc                    = null
      okta                    = null
      saml                    = null
      service_token           = null
    },
  ]

  exclude = [
  ]

  approval_groups   = null
  approval_required = null

  isolation_required             = null
  purpose_justification_prompt   = null
  purpose_justification_required = null
}

#
# Github Actions Self-hosted Runner
#
resource "cloudflare_zero_trust_access_policy" "github_actions_self_host_runner" {
  account_id       = local.account_id
  name             = "Github Actions"
  decision         = "non_identity"
  session_duration = "24h"

  require = [
  ]

  include = [
    {
      any_valid_service_token = null
      auth_context            = null
      auth_method             = null
      azure_ad                = null
      certificate             = null
      common_name             = null
      device_posture          = null
      email                   = null
      email_domain            = null
      email_list              = null
      everyone                = null
      external_evaluation     = null
      geo                     = null
      github_organization     = null
      group                   = null
      gsuite                  = null
      ip                      = null
      ip_list                 = null
      linked_app_token        = null
      login_method            = null
      oidc                    = null
      okta                    = null
      saml                    = null
      service_token = {
        token_id = cloudflare_zero_trust_access_service_token.github_actions_self_host_runner.id
      }
    },
  ]

  exclude = [
  ]

  approval_groups   = null
  approval_required = null

  isolation_required             = null
  purpose_justification_prompt   = null
  purpose_justification_required = null

}
