output "private_dns_zone_virtual_network_links" {
  description = "All private_dns_zone_virtual_network_link resources"
  value       = azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links
}
output "private_dns_zone_virtual_network_links_name" {
  description = "List of name values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.name]
}
output "private_dns_zone_virtual_network_links_private_dns_zone_name" {
  description = "List of private_dns_zone_name values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.private_dns_zone_name]
}
output "private_dns_zone_virtual_network_links_registration_enabled" {
  description = "List of registration_enabled values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.registration_enabled]
}
output "private_dns_zone_virtual_network_links_resolution_policy" {
  description = "List of resolution_policy values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.resolution_policy]
}
output "private_dns_zone_virtual_network_links_resource_group_name" {
  description = "List of resource_group_name values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.resource_group_name]
}
output "private_dns_zone_virtual_network_links_tags" {
  description = "List of tags values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.tags]
}
output "private_dns_zone_virtual_network_links_virtual_network_id" {
  description = "List of virtual_network_id values across all private_dns_zone_virtual_network_links"
  value       = [for k, v in azurerm_private_dns_zone_virtual_network_link.private_dns_zone_virtual_network_links : v.virtual_network_id]
}

