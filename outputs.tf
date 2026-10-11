output "entitlement_bundles_id" {
  description = "Map of id values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no id are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "entitlement_bundles_description" {
  description = "Map of description values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no description are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "entitlement_bundles_entitlements" {
  description = "Map of entitlements values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no entitlements are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.entitlements if v.entitlements != null && length(v.entitlements) > 0 }
}
output "entitlement_bundles_name" {
  description = "Map of name values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no name are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "entitlement_bundles_status" {
  description = "Map of status values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no status are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.status if v.status != null && length(v.status) > 0 }
}
output "entitlement_bundles_target" {
  description = "Map of target values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no target are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.target if v.target != null && length(v.target) > 0 }
}
output "entitlement_bundles_target_resource_orn" {
  description = "Map of target_resource_orn values across all entitlement_bundles, keyed the same as var.entitlement_bundles except keys with no target_resource_orn are omitted"
  value       = { for k, v in okta_entitlement_bundle.entitlement_bundles : k => v.target_resource_orn if v.target_resource_orn != null && length(v.target_resource_orn) > 0 }
}

