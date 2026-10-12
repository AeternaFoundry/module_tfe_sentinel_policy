variable "sentinel_policies" {
  description = <<EOT
Map of sentinel_policies, attributes below
Required:
    - name
    - policy
Optional:
    - description
    - enforce_mode
    - organization
EOT

  type = map(object({
    name         = string
    policy       = string
    description  = optional(string)
    enforce_mode = optional(string)
    organization = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

