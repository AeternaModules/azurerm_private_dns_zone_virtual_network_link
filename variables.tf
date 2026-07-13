variable "private_dns_zone_virtual_network_links" {
  description = <<EOT
Map of private_dns_zone_virtual_network_links, attributes below
Required:
    - name
    - private_dns_zone_name
    - resource_group_name
    - virtual_network_id
Optional:
    - registration_enabled
    - resolution_policy
    - tags
EOT

  type = map(object({
    name                  = string
    private_dns_zone_name = string
    resource_group_name   = string
    virtual_network_id    = string
    registration_enabled  = optional(bool)
    resolution_policy     = optional(string)
    tags                  = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        length(v.private_dns_zone_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_zone_virtual_network_links : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

