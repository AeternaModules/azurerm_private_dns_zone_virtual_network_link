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
    registration_enabled  = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_private_dns_zone_virtual_network_link's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
  # path: resolution_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

