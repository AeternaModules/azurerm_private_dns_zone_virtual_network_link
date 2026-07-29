variable "private_dns_zone_virtual_network_links" {
  description = <<EOT
Map of private_dns_zone_virtual_network_links, attributes below
Required:
    - name
    - private_dns_zone_id
    - virtual_network_id
Optional:
    - registration_enabled
    - resolution_policy
    - tags
EOT

  type = map(object({
    name                 = string
    private_dns_zone_id  = string
    virtual_network_id   = string
    registration_enabled = optional(bool)
    resolution_policy    = optional(string)
    tags                 = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

