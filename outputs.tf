output "private_dns_zone_virtual_network_links_name" {
  description = "Map of name values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.name }
}
output "private_dns_zone_virtual_network_links_private_dns_zone_name" {
  description = "Map of private_dns_zone_name values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.private_dns_zone_name }
}
output "private_dns_zone_virtual_network_links_registration_enabled" {
  description = "Map of registration_enabled values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.registration_enabled }
}
output "private_dns_zone_virtual_network_links_resolution_policy" {
  description = "Map of resolution_policy values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.resolution_policy }
}
output "private_dns_zone_virtual_network_links_resource_group_name" {
  description = "Map of resource_group_name values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.resource_group_name }
}
output "private_dns_zone_virtual_network_links_tags" {
  description = "Map of tags values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.tags }
}
output "private_dns_zone_virtual_network_links_virtual_network_id" {
  description = "Map of virtual_network_id values across all private_dns_zone_virtual_network_links, keyed the same as var.private_dns_zone_virtual_network_links"
  value       = { for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : k => v.virtual_network_id }
}

