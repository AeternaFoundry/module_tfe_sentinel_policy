output "sentinel_policies_id" {
  description = "Map of id values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no id are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_policies_description" {
  description = "Map of description values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no description are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sentinel_policies_enforce_mode" {
  description = "Map of enforce_mode values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no enforce_mode are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.enforce_mode if v.enforce_mode != null && length(v.enforce_mode) > 0 }
}
output "sentinel_policies_name" {
  description = "Map of name values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no name are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sentinel_policies_organization" {
  description = "Map of organization values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no organization are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "sentinel_policies_policy" {
  description = "Map of policy values across all sentinel_policies, keyed the same as var.sentinel_policies except keys with no policy are omitted"
  value       = { for k, v in tfe_sentinel_policy.sentinel_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

