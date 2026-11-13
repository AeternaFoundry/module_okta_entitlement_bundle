output "entitlement_bundles_id" {
  description = "Map of id values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.id }
}
output "entitlement_bundles_description" {
  description = "Map of description values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.description }
}
output "entitlement_bundles_entitlements" {
  description = "Map of entitlements values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.entitlements }
}
output "entitlement_bundles_name" {
  description = "Map of name values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.name }
}
output "entitlement_bundles_status" {
  description = "Map of status values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.status }
}
output "entitlement_bundles_target" {
  description = "Map of target values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.target }
}
output "entitlement_bundles_target_resource_orn" {
  description = "Map of target_resource_orn values across all entitlement_bundles, keyed the same as var.entitlement_bundles"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.target_resource_orn }
}

