resource "tfe_sentinel_policy" "sentinel_policies" {
  for_each = var.sentinel_policies

  name         = each.value.name
  policy       = each.value.policy
  description  = each.value.description
  enforce_mode = each.value.enforce_mode
  organization = each.value.organization
}

